-- Scattershot's weapons/projectile_list.lua sets flak's shrapnel by name, which misses the level flak. Its hook has run
-- by now, so copy its numbers from the base flak to every level (the level shrapnel is shrapnel_<level>).
-- This hook shares its globals with this mod's list hook, so FirstLevel, AddProjectileUpgrades, ... are defined.

local base = FindProjectile("flak")
local base_impact = base and base.Effects and base.Effects.Impact
if base_impact then
   for level = FirstLevel, LastLevel do
      local flak = FindProjectile("flak_" .. level)
      local impact = flak and flak.Effects and flak.Effects.Impact
      for key, effect in pairs(impact or {}) do
         local from = base_impact[key]
         if type(effect) == "table" and effect.Projectile and type(from) == "table" and from.Projectile
            and from.Projectile.Type == "shrapnel" then
            effect.Projectile.Count = from.Projectile.Count
            effect.Projectile.AngleOffset = from.Projectile.AngleOffset
            effect.Projectile.StdDev = from.Projectile.StdDev
         end
      end
   end
end
