-- Armourdillo (DESIGN.md, "Commanders"). This hook shares its globals with this mod's list hook, so
-- ApplyBaseValuesToLevels is defined. Its AP minigun gets levels in this mod's own callbacks (weapons/weapon_list.lua,
-- weapons/projectile_list.lua), which inherit the active AP minigun shell's changes.

-- active: its list hook makes the AP sniper's shell pierce more, by name
if active then
   ApplyBaseValuesToLevels("sniper2", { "PenetrationDamage", "MomentumThreshold", "PenetrationSpeedMultiplier", "TrailEffect", "ProjectileThickness" })
end
