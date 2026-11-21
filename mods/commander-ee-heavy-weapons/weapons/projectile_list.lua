-- Warthog's active callback raises damage and splash radius of the projectiles named in its ProjectilesToAffect list
-- (set by its list hook, which has run by now; the callback runs after this hook). Add the level names, so the
-- callback treats each level projectile like its base. This hook shares its globals with this mod's list hook.
if type(ProjectilesToAffect) == "table" then
   local names = {}
   for _, name in ipairs(ProjectilesToAffect) do table.insert(names, name) end
   for _, name in ipairs(names) do
      for level = FirstLevel, LastLevel do
         if FindProjectile(name .. "_" .. level) then table.insert(ProjectilesToAffect, name .. "_" .. level) end
      end
   end
end
