dofile(path .. "/pregen/scalings.lua")

function AddUpgrade(weapon, upgrade)
	if not weapon.Upgrades then weapon.Upgrades = {} end
	table.insert(weapon.Upgrades, upgrade)
end

function GetUpgradeCostByLevel(scaling_fn, base_cost, level)
	return Significant3(scaling_fn(base_cost, level) - scaling_fn(base_cost, level - 1))
end

for _, weaponUpgrade in ipairs(WeaponUpgrades) do
	local weapon_savename = weaponUpgrade.weapon_savename
	local weapon_filename = weaponUpgrade.weapon_filename
	local weapon_filename_pure = weapon_filename:sub(1, -5)
	-- add an upgrade entry to the base weapon
	local base_weapon = FindWeapon(weapon_savename)
	AddUpgrade(base_weapon,
		{
			Enabled = true,
			SaveName = base_weapon.SaveName .. "_1",
			MetalCost = GetUpgradeCostByLevel(Scaling.WeaponList.MetalCost, base_weapon.MetalCost, 1),
			EnergyCost = GetUpgradeCostByLevel(Scaling.WeaponList.EnergyCost, base_weapon.EnergyCost, 1)
		})
	-- add indef upgrades
	for level = 1, UpgradeCount do
		local weapon =
		{
			Enabled = false,
			SaveName = base_weapon.SaveName .. "_" .. level,
			FileName = path ..
				"/weapons/" .. weapon_filename_pure .. "/" .. weapon_filename_pure .. "_" .. level .. ".lua",
			Prerequisite = "upgrade",
			MetalCost = Significant3(Scaling.WeaponList.MetalCost(base_weapon.MetalCost, level)),
			EnergyCost = Significant3(Scaling.WeaponList.EnergyCost(base_weapon.EnergyCost, level)),
			MetalRepairCost = Significant3(Scaling.WeaponList.MetalRepairCost(base_weapon.MetalRepairCost, level)),
			EnergyRepairCost = Significant3(Scaling.WeaponList.EnergyRepairCost(base_weapon.EnergyRepairCost, level)),
			UpgradeNumber = level,
			OriginalWeapon = base_weapon.SaveName,
		}
		if (level < UpgradeCount) then
			AddUpgrade(weapon,
				{
					Enabled = true,
					SaveName = base_weapon.SaveName .. "_" .. (level + 1),
					MetalCost = GetUpgradeCostByLevel(Scaling.WeaponList.MetalCost, base_weapon.MetalCost, level + 1),
					EnergyCost = GetUpgradeCostByLevel(Scaling.WeaponList.EnergyCost, base_weapon.EnergyCost, level + 1)
				})
		end
		table.insert(
			Weapons,
			InheritType(
				base_weapon,
				nil,
				weapon))
	end
end
