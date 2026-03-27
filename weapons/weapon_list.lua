dofile(path .. "/pregen/scalings.lua")

function AddUpgrade(weapon, upgrade)
	if not weapon.Upgrades then weapon.Upgrades = {} end
	table.insert(weapon.Upgrades, upgrade)
end

function GetUpgradeCostByLevel(scaling_fn, base_cost, level)
	return Significant3(scaling_fn(base_cost, level) - scaling_fn(base_cost, level - 1))
end

function GetCompatibleGroupsOf(base_weapon)
	local compatible_group_types = DeepCopy(base_weapon.CompatibleGroupTypes or {})
	table.insert(compatible_group_types, base_weapon.SaveName)
	for level = 1, UpgradeCount do
		-- upgrades of itself should be compatible
		table.insert(compatible_group_types, base_weapon.SaveName .. "_" .. level)
		-- upgrades of the baseWeapon compatibles should be compatible; disabled for performance reasons
		-- for _, other_weapon in pairs(base_weapon.CompatibleGroupTypes or {}) do
		--	table.insert(compatible_group_types, other_weapon .. "_" .. level)
		--end
	end
	return compatible_group_types
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
	-- determine compatible group types
	local compatible_group_types = GetCompatibleGroupsOf(base_weapon)
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
			CompatibleGroupTypes = compatible_group_types,
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
