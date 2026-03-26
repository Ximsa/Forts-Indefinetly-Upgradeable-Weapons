dofile(path .. "/pregen/scalings.lua")

function AddUpgrade(weapon, upgrade)
   if not weapon.Upgrades then weapon.Upgrades = {} end
   table.insert(weapon.Upgrades, upgrade)
end

function GetUpgradeCostByLevel(scaling_fn, base_cost, level)
   return scaling_fn(base_cost, level) - scaling_fn(base_cost, level - 1)
end


for _, v in ipairs(WeaponUpgrades) do
   mod_path, weapon_savename, weapon_filename, projectile_savenames = unpack(v)
   weapon_filename_pure = weapon_filename:sub(1,-5)
   -- add an upgrade entry to the base weapon
   base_weapon = FindWeapon(weapon_savename)
   AddUpgrade(base_weapon,
	      {Enabled = true,
	       SaveName = base_weapon.SaveName .. "_1",
	       MetalCost = GetUpgradeCostByLevel(Scaling.WeaponList.MetalCost, base_weapon.MetalCost, 1),
	       EnergyCost = GetUpgradeCostByLevel(Scaling.WeaponList.EnergyCost, base_weapon.EnergyCost, 1)})
   -- add indef upgrades
   for level = 1, UpgradeCount do
      local weapon =
	 {
	    Enabled = false,
	    SaveName = base_weapon.SaveName .. "_" .. level,
	    FileName = path .. "/weapons/" .. weapon_filename_pure .. "/" .. weapon_filename_pure .. "_" .. level .. ".lua",
	    Prerequisite = "upgrade",
	    MetalCost = Scaling.WeaponList.MetalCost(base_weapon.MetalCost, level),
	    EnergyCost = Scaling.WeaponList.EnergyCost(base_weapon.EnergyCost, level),
	    MetalRepairCost = Scaling.WeaponList.MetalRepairCost(base_weapon.MetalRepairCost, level),
	    EnergyRepairCost = Scaling.WeaponList.EnergyRepairCost(base_weapon.EnergyRepairCost, level),
	    UpgradeNumber = level,
	    OriginalWeapon = base_weapon.SaveName,
	 }
      AddUpgrade(weapon,
		 {Enabled = level < UpgradeCount,
		  SaveName = base_weapon.SaveName .. "_" .. (level + 1),
		  MetalCost = GetUpgradeCostByLevel(Scaling.WeaponList.MetalCost, base_weapon.MetalCost, level + 1),
		  EnergyCost = GetUpgradeCostByLevel(Scaling.WeaponList.EnergyCost, base_weapon.EnergyCost, level + 1)})
      table.insert(
	 Weapons,
	 InheritType(
	    base_weapon,
	    nil,
	    weapon))
   end
end
