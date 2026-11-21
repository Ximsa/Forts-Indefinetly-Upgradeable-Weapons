-- Buster's list hook gives the AP sniper SpotterFactor = 1 by name, which misses its levels; give the levels the base
-- value. This hook shares its globals with this mod's list hook.
local base = FindWeapon("sniper2")
if base then
   for level = FirstLevel, LastLevel do
      local weapon = FindWeapon("sniper2_" .. level)
      if weapon then weapon.SpotterFactor = base.SpotterFactor end
   end
end
