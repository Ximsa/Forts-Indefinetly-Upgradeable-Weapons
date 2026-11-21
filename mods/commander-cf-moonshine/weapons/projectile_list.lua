-- Moonshine changes some projectiles by name, which misses their levels (survey in llm/PLAN.md, step 5). Give the
-- levels the same changes, read from the changed base projectiles. This hook shares its globals with this mod's list
-- hook, so FirstLevel, ApplyBaseValuesToLevels, ... are defined.

-- its list hook (has run by now): the EMP rocket's radius and its missiles returning to source
ApplyBaseValuesToLevels("rocketemp", { "EMPRadius", "EMPMissileReturnToSource" })
ApplyBaseValuesToLevels("flamingrocketemp", { "EMPRadius", "EMPMissileReturnToSource" })

-- its active callback (runs after this hook, so this is a callback too): snipers get a direct-hit EMP, stop passing
-- enemy portals, and the sniper's shell gets mass 1. EMP duration stays as set, as for the other level projectiles,
-- which its loop over all projectiles sets alike; the mass is scaled to the level.
if RegisterApplyMod then
   RegisterApplyMod(function()
      if not active then return end
      for _, name in ipairs({ "sniper", "sniper2", "flamingsniper", "flamingsniper2" }) do
         local base = FindProjectile(name)
         if base then
            for level = FirstLevel, LastLevel do
               local projectile = FindProjectile(name .. "_" .. level)
               if projectile then
                  projectile.EMPDuration = base.EMPDuration
                  projectile.EMPRadius = base.EMPRadius
                  projectile.PassesEnemyPortals = base.PassesEnemyPortals
               end
            end
            ApplyBaseValuesToLevels(name, { "ProjectileMass" })
         end
      end
   end)
end
