-- Seep's list hook changes some projectiles by name, which misses their levels; its hook has run by now, so give the
-- levels the same changes, read from the changed base projectiles (DESIGN.md, "Commanders").
-- This hook shares its globals with this mod's list hook, so FirstLevel, AddProjectileUpgrades, ... are defined.

-- Seep's own armoured versions (its common/ list hook) may come after this mod's list hook, which then didn't give
-- them levels; a level armoured shell turns back into the same level of its plain one
for base_name, armoured_name in pairs({ missile = "armouredmissile", rocketemp = "armouredrocketemp", rocket = "armouredrocket" }) do
   if FindProjectile(armoured_name) and not FindProjectile(armoured_name .. "_" .. FirstLevel) then
      AddProjectileUpgrades(armoured_name, {}, Scaling.ProjectileList, true, base_name)
   end
end

-- a hit warhead splits into missiles: a level warhead into the same level of them
local damaged = FindProjectile("damagedmissile2")
local split = damaged and damaged.Effects and damaged.Effects.Impact and damaged.Effects.Impact["antiair"]
if split and split.Projectile and split.Projectile.Type then
   for level = FirstLevel, LastLevel do
      local level_damaged = FindProjectile("damagedmissile2_" .. level)
      if level_damaged and level_damaged.Effects and level_damaged.Effects.Impact then
         local level_split = DeepCopy(split)
         if FindProjectile(split.Projectile.Type .. "_" .. level) then
            level_split.Projectile.Type = split.Projectile.Type .. "_" .. level
         end
         level_damaged.Effects.Impact["antiair"] = level_split
      end
   end
end

-- active: rockets fly erratically (the game's MakeMissileErratic, as Seep applies it to the base rockets)
if active and MakeMissileErratic then
   for _, name in ipairs({ "rocket", "rocketemp", "flamingrocketemp" }) do
      for level = FirstLevel, LastLevel do
         local projectile = FindProjectile(name .. "_" .. level)
         if projectile then MakeMissileErratic(projectile) end
      end
   end
end

-- smoke lasts longer and spreads wider
ApplyBaseValuesToLevels("smoke", { "MaxAge", "FieldRadius" })
