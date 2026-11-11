dofile(path .. "/lib/scalings.lua")
dofile(path .. "/lib/util.lua")

local added_projectiles = {}

-- recursively find and replace savenames of child projectiles
-- parent_projectile is a projectile table to replace in
-- child_projectile_savenames is a table with keys set to savenames of child projectiles to replace. Value is ignored
function FindAndReplaceChildProjectiles(parent_projectile, child_projectile_savenames, level)
   RecursiveUpdateFiltered(parent_projectile, child_projectile_savenames, function(savename)
      return savename .. "_" .. level
   end)
end

function AddProjectileUpgrades(projectile_savename, child_projectile_savenames, scaling)
   if not added_projectiles[projectile_savename] then -- prevents adding the same projectile multiple times
      local base_projectile = DeepCopy(FindProjectile(projectile_savename))
      if not base_projectile then
         Log("Error: Could not find projectile with savename " .. projectile_savename)
         return
      end
      added_projectiles[projectile_savename] = true

      -- set incendiary radius if incendiary and splash weapon to allow incendiary scaling
      if base_projectile.ProjectileIncendiary and base_projectile.ProjectileSplashDamageMaxRadius and not base_projectile.IncendiaryRadius then
         base_projectile.IncendiaryRadius = base_projectile.ProjectileSplashDamageMaxRadius
         base_projectile.IncendiaryRadiusHeated = base_projectile.IncendiaryRadius
      end

      for level = FirstLevel, LastLevel do
         -- indef projectile prototype
         local projectile = { SaveName = base_projectile.SaveName .. "_" .. level }
         for field, fn in pairs(scaling) do
            if base_projectile[field] then
               projectile[field] = fn(base_projectile[field], UpgradeStep(level))
            end
         end
         -- inherit non defined fields from base projectile
         projectile = InheritType(base_projectile, nil, projectile)
         -- add child projectiles
         FindAndReplaceChildProjectiles(projectile, child_projectile_savenames, level)
         -- add projectile to global list
         table.insert(Projectiles, projectile)
      end
   end
end

-- projectile_upgrade_table comes in the form of { ProjectileSavename = {} or {Child = {...}}} recursively
-- adds the existing transformed versions of every projectile in the tree as its children (see
-- TransformedProjectilePrefixes in lib/scalings.lua)
function AddTransformedProjectiles(projectile_upgrade_table)
   for projectile_savename, childs in pairs(projectile_upgrade_table) do
      for _, prefix in ipairs(TransformedProjectilePrefixes) do
         local transformed = prefix .. projectile_savename
         if not childs[transformed] and FindProjectile(transformed) then
            childs[transformed] = {}
         end
      end
      AddTransformedProjectiles(childs)
   end
end

-- scaling is the ProjectileList table for the entry that owns the tree (see ScalingFor); a projectile shared by
-- several entries is built once, with the first entry's rules
function ProcessUpgradeTable(projectile_upgrade_table, scaling)
   for projectile_savename, childs in pairs(projectile_upgrade_table) do
      AddProjectileUpgrades(projectile_savename, childs, scaling)
      ProcessUpgradeTable(childs, scaling)
   end
end

for _, weapon_upgrade in ipairs(WeaponUpgrades) do
   AddTransformedProjectiles(weapon_upgrade.projectile)
   ProcessUpgradeTable(weapon_upgrade.projectile, ScalingFor(weapon_upgrade, "ProjectileList"))
end
