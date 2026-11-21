-- AI parity (llm/PLAN.md, step 4), as v1 did it: level projectiles are shootable like their base, and level anti-air
-- weapons get their base's anti-air settings. Nothing else: copying more AI tables (data recursively, target priority
-- lists) made the game hang (2026-11-11). The names come from the registry in lib/scalings.lua.

local function AddLevels()
   dofile(path .. "/lib/scalings.lua")

   -- every registered projectile with its transformed versions (flaming, damaged, and both in either order)
   local projectile_names = {}
   local function AddProjectileNames(tree)
      for name, children in pairs(tree) do
         projectile_names[name] = true
         for _, prefix in ipairs(TransformedProjectilePrefixes) do
            projectile_names[prefix .. name] = true
            for _, prefix2 in ipairs(TransformedProjectilePrefixes) do projectile_names[prefix2 .. prefix .. name] = true end
         end
         AddProjectileNames(children)
      end
   end
   for _, weapon_upgrade in ipairs(WeaponUpgrades) do AddProjectileNames(weapon_upgrade.projectile or {}) end

   for name in pairs(projectile_names) do
      if ShootableProjectile[name] then
         for level = FirstLevel, LastLevel do ShootableProjectile[name .. "_" .. level] = ShootableProjectile[name] end
      end
   end

   for _, weapon_upgrade in ipairs(WeaponUpgrades) do
      local name = weapon_upgrade.weapon_savename
      if data.AntiAirFireProbability[name] ~= nil then
         for level = FirstLevel, LastLevel do
            local level_name = name .. "_" .. level
            data.AntiAirErrorStdDev[level_name] = data.AntiAirErrorStdDev[name]
            data.AntiAirOpenDoor[level_name] = data.AntiAirOpenDoor[name]
            data.AntiAirFireProbability[level_name] = data.AntiAirFireProbability[name]
            AntiAirFireProbabilityHumanAssist[level_name] = AntiAirFireProbabilityHumanAssist[name]
         end
      end
   end
end

-- list every DLC weapon: names the game doesn't have are skipped above, as they aren't in the AI tables
local moonshot_before, dlc2_before = moonshot, dlc2Var_Active
moonshot, dlc2Var_Active = true, true
local ok, err = pcall(AddLevels)
moonshot, dlc2Var_Active = moonshot_before, dlc2_before
if not ok and Log then Log("IUW ai/ai.lua: level weapons have no AI parity: " .. tostring(err)) end
