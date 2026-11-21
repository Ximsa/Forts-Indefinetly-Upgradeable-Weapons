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

-- quiet: the entry belongs to another mod, which may be inactive in this match (Lua can't tell), so a missing
-- projectile isn't an error. parent_savename: the projectile this one is a transformed version of; a reaction that
-- turns it back (a shot-down armoured missile becomes the plain one) leads to the parent's same level. Only in
-- Effects: elsewhere a SaveName like "missile" or "mortar" is also a ProjectileType value.
function AddProjectileUpgrades(projectile_savename, child_projectile_savenames, scaling, quiet, parent_savename)
   if not added_projectiles[projectile_savename] then -- prevents adding the same projectile multiple times
      local base_projectile = DeepCopy(FindProjectile(projectile_savename))
      if not base_projectile then
         if not quiet then Log("Error: Could not find projectile with savename " .. projectile_savename) end
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
         if parent_savename and type(projectile.Effects) == "table" then
            FindAndReplaceChildProjectiles(projectile.Effects, { [parent_savename] = true }, level)
         end
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
function ProcessUpgradeTable(projectile_upgrade_table, scaling, quiet, parent_savename)
   for projectile_savename, childs in pairs(projectile_upgrade_table) do
      AddProjectileUpgrades(projectile_savename, childs, scaling, quiet, parent_savename)
      ProcessUpgradeTable(childs, scaling, quiet, projectile_savename)
   end
end

for _, weapon_upgrade in ipairs(WeaponUpgrades) do
   AddTransformedProjectiles(weapon_upgrade.projectile)
   ProcessUpgradeTable(weapon_upgrade.projectile, ScalingFor(weapon_upgrade, "ProjectileList"), weapon_upgrade.mod ~= ".")
end

-- Projectiles react to other projectiles by SaveName: Effects.Impact["firebeam"] turns a cannon shell into
-- flamingcannon (MakeFlamingVersion). Give every such reaction to a level-scaled projectile the same reaction to its
-- levels, so a level firebeam sets shells on fire like the base one.
for _, projectile in ipairs(Projectiles) do
   local impact = projectile.Effects and projectile.Effects.Impact
   if type(impact) == "table" then
      local scaled = {}
      for name in pairs(impact) do
         if added_projectiles[name] then table.insert(scaled, name) end
      end
      for _, name in ipairs(scaled) do
         for level = FirstLevel, LastLevel do
            if impact[name .. "_" .. level] == nil then impact[name .. "_" .. level] = impact[name] end
         end
      end
   end
end

-- For commander sub-mods (DESIGN.md, "Commanders"): after a commander's list hook changed `fields` of a base
-- projectile by name, give every level of it the changed value, scaled to the level where levels scale that field.
function ApplyBaseValuesToLevels(projectile_savename, fields)
   local base = FindProjectile(projectile_savename)
   if not base then return end
   for level = FirstLevel, LastLevel do
      local projectile = FindProjectile(projectile_savename .. "_" .. level)
      if projectile then
         for _, field in ipairs(fields) do
            local fn = Scaling.ProjectileList[field]
            if fn and type(base[field]) == "number" then
               projectile[field] = fn(base[field], UpgradeStep(level))
            else
               projectile[field] = type(base[field]) == "table" and DeepCopy(base[field]) or base[field]
            end
         end
      end
   end
end
