dofile(path .. "/pregen/scalings.lua")

local added_projectiles = {}

for _, v in ipairs(WeaponUpgrades) do
   mod_path, weapon_savename, weapon_filename, projectile_savenames = unpack(v)
   projectile_savename = projectile_savenames[1]-- TODO: support splitting projectiles
   if not added_projectiles[projectile_savename] then
      added_projectiles[projectile_savename] = true
      base_projectile = FindProjectile(projectile_savename)   
      for level = 1, UpgradeCount do
	 local projectile = {SaveName = base_projectile.SaveName .. "_" .. level}
	 for field, fn in pairs(Scaling.ProjectileList) do
	 if base_projectile[field] then
	    projectile[field] = fn(base_projectile[field], level)
	 end
	 end
	 table.insert(Projectiles, InheritType(base_projectile, nil, projectile))
      end
   end
end
