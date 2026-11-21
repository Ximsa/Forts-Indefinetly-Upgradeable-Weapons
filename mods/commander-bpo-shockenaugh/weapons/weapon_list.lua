-- Shockenaugh's list hook lifts the buzzsaw's group-size limit by name, which misses the level buzzsaws; its hook has
-- run by now, so give the levels the base buzzsaw's value. This hook shares its globals with this mod's list hook.
local base = FindWeapon("buzzsaw")
if base then
   for level = FirstLevel, LastLevel do
      local weapon = FindWeapon("buzzsaw_" .. level)
      if weapon then weapon.MaxWeaponGroupSize = base.MaxWeaponGroupSize end
   end
end
