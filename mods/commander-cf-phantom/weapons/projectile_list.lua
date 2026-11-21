-- Phantom's list hook makes the magnabeam deal damage and set fires, by name, which misses the level magnabeams; its
-- hook has run by now, so give the levels the changed values (damage scaled to the level). Its cloaking loop over all
-- weapons reaches the levels by itself (probe 2026-11-21). This hook shares its globals with this mod's list hook.
ApplyBaseValuesToLevels("magnabeam", { "ProjectileDamage", "ProjectileIncendiary" })
