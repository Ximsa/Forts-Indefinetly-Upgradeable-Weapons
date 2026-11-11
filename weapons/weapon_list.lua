dofile(path .. "/lib/scalings.lua")
dofile(path .. "/lib/util.lua")

function AddUpgrade(weapon, upgrade)
	if not weapon.Upgrades then weapon.Upgrades = {} end
	table.insert(weapon.Upgrades, upgrade)
end

function HasUpgrades(weapon_savename)
	for _, weapon_upgrade in pairs(WeaponUpgrades) do
		if weapon_upgrade.weapon_savename == weapon_savename then return true end
	end
	return false
end

function GetUpgradeCostByLevel(scaling_fn, base_cost, level)
	return scaling_fn(base_cost, level) - scaling_fn(base_cost, level - 1)
end

function GetCompatibleGroupsOf(base_weapon)
	local compatible_group_types = DeepCopy(base_weapon.CompatibleGroupTypes or {})
	table.insert(compatible_group_types, base_weapon.SaveName)
	for level = FirstLevel, LastLevel do
		-- upgrades of itself should be compatible
		table.insert(compatible_group_types, base_weapon.SaveName .. "_" .. level)
		-- upgrades of the baseWeapon compatibles should be compatible; disabled for performance reasons
		-- for _, other_weapon in pairs(base_weapon.CompatibleGroupTypes or {}) do
		--	table.insert(compatible_group_types, other_weapon .. "_" .. level)
		--end
	end
	return compatible_group_types
end

function AddUpgradesForWeapon(weapon_upgrade)
	local build_cost_factor = weapon_upgrade.build_cost_factor or 1
	local weapon_savename = weapon_upgrade.weapon_savename
	local weapon_filename = weapon_upgrade.weapon_filename
	local weapon_filename_pure = weapon_filename:sub(1, -5)
	-- add an upgrade entry to the base weapon
	local base_weapon = FindWeapon(weapon_savename)
	if not base_weapon then
		Log("Error: Could not find weapon with savename " .. weapon_savename)
		return
	end
	AddUpgrade(base_weapon,
		{
			Enabled = true,
			SaveName = base_weapon.SaveName .. "_" .. FirstLevel,
			MetalCost = GetUpgradeCostByLevel(Scaling.WeaponList.MetalCost, base_weapon.MetalCost * build_cost_factor, UpgradeStep(FirstLevel)),
			EnergyCost = GetUpgradeCostByLevel(Scaling.WeaponList.EnergyCost, base_weapon.EnergyCost * build_cost_factor, UpgradeStep(FirstLevel))
		})
	-- determine compatible group types
	local compatible_group_types = GetCompatibleGroupsOf(base_weapon)
	-- add indef upgrades; level names the weapon, step drives the scaling
	for level = FirstLevel, LastLevel do
		local step = UpgradeStep(level)
		local weapon =
		{
			Enabled = false,
			SaveName = base_weapon.SaveName .. "_" .. level,
			FileName = path ..
				"/weapons/" .. weapon_filename_pure .. "/" .. weapon_filename_pure .. "_" .. level .. ".lua",
			Prerequisite = "upgrade",
			MetalCost = Scaling.WeaponList.MetalCost(base_weapon.MetalCost * build_cost_factor, step),
			EnergyCost = Scaling.WeaponList.EnergyCost(base_weapon.EnergyCost * build_cost_factor, step),
			MetalRepairCost = Scaling.WeaponList.MetalRepairCost(base_weapon.MetalRepairCost * build_cost_factor, step),
			EnergyRepairCost = Scaling.WeaponList.EnergyRepairCost(base_weapon.EnergyRepairCost * build_cost_factor, step),
			CompatibleGroupTypes = compatible_group_types,
			UpgradeNumber = step,
			OriginalWeapon = base_weapon.SaveName,
		}
		-- the base points to its ceiling variant (e.g. missile -> missileinv); point levels to the same level of that variant
		if base_weapon.InvertedType and HasUpgrades(base_weapon.InvertedType) then
			weapon.InvertedType = base_weapon.InvertedType .. "_" .. level
		end
		if (level < LastLevel) then
			AddUpgrade(weapon,
				{
					Enabled = true,
					SaveName = base_weapon.SaveName .. "_" .. (level + 1),
					MetalCost = GetUpgradeCostByLevel(Scaling.WeaponList.MetalCost, base_weapon.MetalCost * build_cost_factor, step + 1),
					EnergyCost = GetUpgradeCostByLevel(Scaling.WeaponList.EnergyCost, base_weapon.EnergyCost * build_cost_factor, step + 1)
				})
		else
			weapon.Upgrades = {}
		end
		table.insert(
			Weapons,
			InheritType(
				base_weapon,
				nil,
				weapon))
	end
end

for _, weapon_upgrade in pairs(WeaponUpgrades) do
	AddUpgradesForWeapon(weapon_upgrade)
end
