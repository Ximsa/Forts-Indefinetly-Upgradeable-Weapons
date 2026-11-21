-- Buster's power replaces the projectiles named in its ProjectilesToUranium list with their uranium<name> versions,
-- with effects from its ProjectileEffects table (both set by its list hook, which has run by now). Level projectiles
-- aren't named there, so level weapons kept firing normal shells (2026-11-21). Add the level names to both tables and
-- give the uranium versions levels; a level uranium shell is the uranium version of the same level.
-- This hook shares its globals with this mod's list hook, so FirstLevel, AddProjectileUpgrades, ... are defined.
if type(ProjectilesToUranium) == "table" then
   local names, is_list = {}, #ProjectilesToUranium > 0 -- a list of names, or names as keys
   for key, value in pairs(ProjectilesToUranium) do
      table.insert(names, is_list and value or key)
   end
   for _, name in ipairs(names) do
      local uranium_name = "uranium" .. name
      if FindProjectile(uranium_name) and FindProjectile(name .. "_" .. FirstLevel) then
         if not FindProjectile(uranium_name .. "_" .. FirstLevel) then
            AddProjectileUpgrades(uranium_name, {}, Scaling.ProjectileList, true, name)
         end
         for level = FirstLevel, LastLevel do
            local level_name = name .. "_" .. level
            if is_list then
               table.insert(ProjectilesToUranium, level_name)
            else
               ProjectilesToUranium[level_name] = ProjectilesToUranium[name]
            end
            if type(ProjectileEffects) == "table" then ProjectileEffects[level_name] = ProjectileEffects[name] end
         end
      end
   end
end

-- Buster's list hook raises the minigun's and shotgun's damage to armour and doors by name
ApplyBaseValuesToLevels("minigun", { "DamageMultiplier" })
ApplyBaseValuesToLevels("shotgun", { "DamageMultiplier" })
