-- variables to be filled by pregenerator:
-- OriginalFileName
-- UpgradeLevel
-- ModPath
dofile(path .. "/lib/scalings.lua")
dofile(path .. "/lib/util.lua")

function ReplaceHeadSprite(Node)
   if Node.Name and Node.Name == "Head" then -- found the node
      Node.Sprite = MySprite.Name
      return
   end
   for _, v in pairs(Node) do
      if type(v) == 'table' then
         ReplaceHeadSprite(v)
      end
   end
end

function ExtrapolateBeamTable(base_beamtable, beam_duration)
   -- extend pattern from last 2 entries
   if not beam_duration or type(beam_duration) ~= 'number' then
      return DeepCopy(base_beamtable)
   end
   local beam_table = DeepCopy(base_beamtable)

   if #base_beamtable < 2 then -- not enough data to extrapolate
      return beam_table
   end

   -- sorted by time: find pre-last and last entries
   local sorted = {}
   for _, p in ipairs(base_beamtable) do
      table.insert(sorted, p)
   end
   table.sort(sorted, function(a, b) return a[1] < b[1] end)

   local pre_last_beam = sorted[#sorted - 1]
   local last_beam = sorted[#sorted]
   local last_time = last_beam[1]

   if beam_duration <= last_time then -- beamtable already long enough
      return beam_table
   end

   local interval = last_time - pre_last_beam[1]
   if interval <= 0 then -- cannot extrapolate if last two entries have same time
      return beam_table
   end

   local next_time = last_time + interval
   local next_value = pre_last_beam
   while next_time <= beam_duration do
      table.insert(beam_table, { next_time, next_value[2], next_value[3] })
      next_value = (next_value == pre_last_beam) and last_beam or pre_last_beam
      next_time = next_time + interval
   end

   return beam_table
end

function HandleInvertedType()
   local non_inverted_file_name = OriginalFileName:gsub("_inverted", "")
   non_inverted_file_name = non_inverted_file_name:sub(1, -5) -- remove ending
   -- the inverted original set Inverted = true and the non-inverted original doesn't reset it;
   -- clear it so the nested stub takes the normal branch instead of recursing into HandleInvertedType
   Inverted = nil
   dofile(path .. "/weapons/" .. non_inverted_file_name .. "/" .. non_inverted_file_name .. "_" .. UpgradeLevel .. ".lua")
   Inverted = true
   -- invert direction
   Root.Angle = 180
   Root.Pivot = { 0, -0.12 }

   SelectionOffset = { 0.0, -22.0 }
   RecessionBox.Offset = { 0, 890 }

   MinFireAngle = MinFireAngle + 180
   MaxFireAngle = MaxFireAngle + 180

   -- already set up in original file
   Sprites = {}
end

function UpdateSprite()
   for _, sprite in pairs(Sprites) do
      if string.find(sprite.Name, "head") then
         MySprite = DeepCopy(sprite)
         break
      elseif string.find(sprite.Name, "base") then
         MySprite = DeepCopy(sprite)
      end
   end

   MySprite.Name = MySprite.Name .. "_" .. UpgradeLevel
   MySprite.States.Normal.Frames[1].colour =
   {
      1 - math.abs(math.sin(1.5 * math.pi * (UpgradeLevel - 1) / UpgradeCount)),
      1 - math.abs(math.sin(0.5 * math.pi * (UpgradeLevel - 1) / UpgradeCount)),
      1 - math.abs(math.sin(4.5 * math.pi * (UpgradeLevel - 1) / UpgradeCount)),
      1,
   } -- rgba
   Sprites =
   {
      MySprite,
   }

   -- add sprite to Root
   if string.find(MySprite.Name, "head") then
      ReplaceHeadSprite(Root)
   elseif string.find(MySprite.Name, "base") then
      Root.Sprite = MySprite.Name
   end
end

function AdjustRoundsEachBurst()
   if not RoundsEachBurst then
      RoundsEachBurst = 1
      RoundPeriod = 1
      AddedRoundsEachBurst = true -- not from the original file; undone if this file runs again (commander sub-mods)
   end
end

function ApplyScaling()
   for field, fn in pairs(ScalingFor(FindCurrentUpgrade(), "WeaponFile")) do
      if _G[field] then
         _G[field] = fn(_G[field], UpgradeStep(UpgradeLevel))
      end
   end
end

function FindCurrentUpgrade()
   for _, weapon_upgrade in pairs(WeaponUpgrades) do
      if weapon_upgrade.weapon_filename == OriginalFileName then
         return weapon_upgrade
      end
   end
   return nil
end

-- Forts runs other mods' overlay files only when it loads the original file itself, not when we dofile it.
-- Replay the overlays listed in the registry entry (e.g. harpoon's ammunition comes from one).
function ApplyOverlays()
   local current_upgrade = FindCurrentUpgrade()
   if not current_upgrade or not current_upgrade.overlays then return end
   for _, overlay in ipairs(current_upgrade.overlays) do
      local tmp_path = path
      path = overlay.mod
      dofile(overlay.mod .. "/" .. overlay.file)
      path = tmp_path
   end
end

-- Forts runs a commander's overlay of a weapon file only when it loads the base file. A commander sub-mod runs this file
-- a second time with CommanderOverlays set to the commander's own overlay files of this weapon (written by
-- lib/pregen_files.lua; DESIGN.md, "Commanders"), so the level weapon is the commander's base weapon, scaled. Sprite
-- swaps are left out: Root and Sprites are restored afterwards, so the level tint stays. While the overlays run, Sprites
-- is a table that grows any path they touch: Scattershot's AP sniper sets a frame of a sprite state ("ReloadBPO") that
-- only the game's faction files add.
-- The overlays run on a copy of the sprites (their sprite functions look up the weapon's own sprites) in which every
-- missing key reads as a new such table, so they can write paths the base file doesn't have: Scattershot's AP sniper
-- sets Sprites[3].States.ReloadBPO.Frames[10], a state only the faction files add. Lua 5.1's ipairs and # read raw,
-- so loops over the sprites don't see these tables. Weapon files have no rawset; assigning inside __index doesn't
-- call it again.
local function SpriteSink(t)
   local copy = {}
   for k, v in pairs(t or {}) do copy[k] = type(v) == "table" and SpriteSink(v) or v end
   return setmetatable(copy, { __index = function(s, k) local v = SpriteSink() s[k] = v return v end })
end

function ReplayCommanderOverlays()
   if not CommanderOverlays then return end
   local root, sprites = DeepCopy(Root), Sprites
   Sprites = SpriteSink(sprites)
   for _, overlay in ipairs(CommanderOverlays) do
      local tmp_path = path
      path = overlay.mod -- the commander's folder, as when the game runs the overlay
      dofile(overlay.file)
      path = tmp_path
   end
   Root, Sprites = root, sprites
end

-- High Seas ammunition entries carry their own stats (ReloadTime, fire speeds, fire costs, RoundsEachBurst, ...)
-- that override the weapon's, so scale them with the same rules, and fire the level's projectiles
function UpgradeAmmunition()
   local current_upgrade = FindCurrentUpgrade()
   if not current_upgrade then return end
   if dlc2Var_Active and dlc2_Ammunition and type(dlc2_Ammunition) == "table" then
      local step = UpgradeStep(UpgradeLevel)
      for _, ammo in pairs(dlc2_Ammunition) do
         for field, fn in pairs(ScalingFor(current_upgrade, "WeaponFile")) do
            if type(ammo[field]) == "number" then
               ammo[field] = fn(ammo[field], step)
            end
         end
         if ammo.Projectile and current_upgrade.ammunition[ammo.Projectile] then
            ammo.Projectile = ammo.Projectile .. "_" .. UpgradeLevel
         end
      end
   end
end

-- Beam weapons don't get more rounds per burst; they get a longer BeamDuration instead.
-- The original file sets EnergyFireCost per second (cost per shot / BeamDuration). ApplyScaling has scaled that
-- per-second value; convert it back so that the cost per shot is the scaled base cost per shot.
function ExtendBeamTable(base_beam_duration)
   if not GenerateBeamTable and not BeamTable then return end
   if GenerateBeamTable then
      GenerateBeamTable(BeamDuration, 0.05, 1)
   else
      BeamTable = ExtrapolateBeamTable(BeamTable, BeamDuration)
   end
   RoundsEachBurst = 1
   if base_beam_duration and BeamDuration and BeamDuration > 0 then
      EnergyFireCost = EnergyFireCost * base_beam_duration / BeamDuration
   end
end

-- import original file; it is <mod>/weapons/<file> unless the registry names another place (original_file)
local current_upgrade = FindCurrentUpgrade()
local original_file = current_upgrade and current_upgrade.original_file or (ModPath .. "/weapons/" .. OriginalFileName)
-- on a second run (commander sub-mod), drop what the first run added that the original file doesn't set again
if AddedRoundsEachBurst then
   RoundsEachBurst, RoundPeriod, AddedRoundsEachBurst = nil, nil, nil
end
local tmp = path
path = ModPath -- dofile with path set to the weapons' path
dofile(original_file)
path = tmp     -- restore path
ApplyOverlays()
ReplayCommanderOverlays()
if not Sprites then
   Log("IUW: original weapon file " .. original_file .. " did not load (check mod and original_file in lib/scalings.lua)")
end

if Inverted then
   HandleInvertedType()
else
   UpdateSprite()
   AdjustRoundsEachBurst()
   local base_beam_duration = BeamDuration
   ApplyScaling()
   UpgradeAmmunition()
   ExtendBeamTable(base_beam_duration)
   if Projectile then
      Projectile = Projectile .. "_" .. UpgradeLevel
   end
end
