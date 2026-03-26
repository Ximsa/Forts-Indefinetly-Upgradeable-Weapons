-- variables to be filled by pregenerator:
-- OriginalFileName
-- UpgradeLevel
-- ModPath
dofile(path .. "/pregen/scalings.lua") -- import scaling behavior

function ReplaceHeadSprite(Node)
   if Node.Name and Node.Name == "Head" then -- found the node
      Node.Sprite = MySprite.Name
      return
   end
   for k, v in pairs(Node) do
      if type(v) == 'table' then
	 ReplaceHeadSprite(v)
      end
   end
end

-- import original file
local tmp = path
path = ModPath -- dofile with path set to the weapons' path
dofile(path .. "/weapons/" .. OriginalFileName)
path = tmp -- restore path

if Inverted then
   non_inverted_file_name = OriginalFileName:gsub("_inverted", "")
   non_inverted_file_name = non_inverted_file_name:sub(1,-5) -- remove ending
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
else
   -- update sprite
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
	 1 - math.abs(math.sin(1.5*math.pi*UpgradeLevel / UpgradeCount)),
	 1 - math.abs(math.sin(0.5*math.pi*UpgradeLevel / UpgradeCount)),
	 1 - math.abs(math.sin(4.5*math.pi*UpgradeLevel / UpgradeCount)),
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

   -- apply scaling factors
   local blacklist = {}
   blacklist["BeamDuration"] = true
   blacklist["BeamDamageMultiplier"] = true
   for field, fn in pairs(Scaling.WeaponFile) do
      if _G[field] and not blacklist[field] then
	 _G[field] = fn(_G[field], UpgradeLevel)
      end
   end
   -- extend BeamTable
   if GenerateBeamTable then
      BeamDuration = Scaling.WeaponFile.BeamDuration(BeamDuration, UpgradeLevel)
      GenerateBeamTable(BeamDuration, 0.05, 1)
   elseif BeamTable then -- if we cant extend it, simply increase damage
      BeamDamageMultiplier = Scaling.ProjectileList.ProjectileDamage(BeamDamageMultiplier or 1, UpgradeLevel)
   end
   
   -- set projectile
   Projectile = Projectile .. "_" .. UpgradeLevel
end
