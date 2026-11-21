-- Firebird changes projectiles by name in a callback, which misses their levels: mortars, cannons and 20mm cannons
-- become incendiary, flaming projectiles don't expire, and with the power the warhead burns a wide area. Its loop over
-- all projectiles also skips the base mortar, cannon and AP sniper by reference, so without help their levels get its
-- generic fire radius. This callback runs after Firebird's and gives the levels the base values, scaled to the level
-- where levels scale them (survey in llm/PLAN.md, step 5). This hook shares its globals with this mod's list hook.
local incendiary = { "ProjectileIncendiary", "IncendiaryRadius", "IncendiaryRadiusHeated", "IncendiaryOffset", "AlwaysIncendiary" }
local passive = {
   mortar = { "ProjectileIncendiary", "IncendiaryRadius", "IncendiaryRadiusHeated", "IncendiaryOffset", "AlwaysIncendiary", "ProjectileSplashDamage" },
   cannon = incendiary,
   cannon20mm = { "ProjectileIncendiary" },
}
for _, name in ipairs({ "flamingmortar", "flamingmortar2", "flamingrocketemp", "flamingrocket", "flamingmissile",
                        "flamingmissile2", "flamingdamagedmissile2" }) do
   passive[name] = { "MaxAge" }
end
local active_only = { sniper2 = incendiary, missile2 = incendiary, damagedmissile2 = incendiary }

if RegisterApplyMod then
   RegisterApplyMod(function()
      for name, fields in pairs(passive) do ApplyBaseValuesToLevels(name, fields) end
      if active then
         for name, fields in pairs(active_only) do ApplyBaseValuesToLevels(name, fields) end
      end
   end)
end
