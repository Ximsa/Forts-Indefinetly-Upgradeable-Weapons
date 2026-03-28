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
   dofile(path .. "weapons/" .. non_inverted_file_name .. "/" .. non_inverted_file_name .. "_" .. UpgradeLevel .. ".lua")
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
      1 - math.abs(math.sin(1.5 * math.pi * UpgradeLevel / UpgradeCount)),
      1 - math.abs(math.sin(0.5 * math.pi * UpgradeLevel / UpgradeCount)),
      1 - math.abs(math.sin(4.5 * math.pi * UpgradeLevel / UpgradeCount)),
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
   end
end

function ApplyScaling()
   for field, fn in pairs(Scaling.WeaponFile) do
      if _G[field] then
         _G[field] = fn(_G[field], UpgradeLevel)
      end
   end
end

function UpgradeAmmunition()
   -- find entry of current weapon upgrade
   local current_upgrade = nil
   for _, weapon_upgrade in pairs(WeaponUpgrades) do
      if weapon_upgrade.weapon_filename == OriginalFileName then
         current_upgrade = weapon_upgrade
         break
      end
   end
   if not current_upgrade then return end
   -- upgrade ammunition if applicable
   if dlc2Var_Active and dlc2_Ammunition and type(dlc2_Ammunition) == "table" then
      for k, v in pairs(dlc2_Ammunition) do
         if v.Projectile and v.Projectile[current_upgrade.ammunition] then
            dlc2_Ammunition[k].Projectile = v.Projectile .. "_" .. UpgradeLevel
         end
      end
   end
end

function ExtendBeamTable()
   if GenerateBeamTable then
      GenerateBeamTable(BeamDuration, 0.05, 1)
      -- disable rounds each burst scaling, factor in beam duration for firecost, since beam firecost is measured in energy/second rather than per shot
      RoundsEachBurst = 1
      EnergyFireCost = EnergyFireCost / BeamDuration
   elseif BeamTable then
      BeamTable = ExtrapolateBeamTable(BeamTable, BeamDuration)
      -- disable rounds each burst scaling, factor in beam duration for firecost, since beam firecost is measured in energy/second rather than per shot
      RoundsEachBurst = 1
      EnergyFireCost = EnergyFireCost / BeamDuration
   end
end

-- import original file
local tmp = path
path = ModPath -- dofile with path set to the weapons' path
dofile(path .. "/weapons/" .. OriginalFileName)
path = tmp     -- restore path

if Inverted then
   HandleInvertedType()
else
   UpdateSprite()
   AdjustRoundsEachBurst()
   ApplyScaling()
   UpgradeAmmunition()
   ExtendBeamTable()
   if Projectile then
      Projectile = Projectile .. "_" .. UpgradeLevel
   end
end
