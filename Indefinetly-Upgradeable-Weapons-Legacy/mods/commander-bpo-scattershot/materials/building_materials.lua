-- TODO: table.insert causes an error

local shield = FindMaterial("shield")
if shield then
   shield.SpeedLossFactor = 0
   for i = 2, 64 do
      --table.insert(shield.ForcedReflection, "_cannon" .. i)
   end
end
