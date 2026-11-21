-- Eagle Eye's active callback makes the projectiles named in its ExplosiveProjectileDamageFactor table explosive
-- (minigun and sniper shells; the table is set by its list hook, which has run by now, and read by the callback,
-- which runs after this hook). Add the level names with their base's factor. This hook shares its globals with this
-- mod's list hook.
if type(ExplosiveProjectileDamageFactor) == "table" then
   local factors = {}
   for name, factor in pairs(ExplosiveProjectileDamageFactor) do factors[name] = factor end
   for name, factor in pairs(factors) do
      for level = FirstLevel, LastLevel do
         if FindProjectile(name .. "_" .. level) then ExplosiveProjectileDamageFactor[name .. "_" .. level] = factor end
      end
   end
end
