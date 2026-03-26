UpgradeCount = 64
GrowScaleFractionalPower = 0.15
GrowScaleLinear = 0.15
GrowScaleSubQuadratic = 0.15

-- from http://lua-users.org/wiki/CopyTable
function DeepCopy(orig)
	local orig_type = type(orig)
	local copy
	if orig_type == 'table' then
		copy = {}
		for orig_key, orig_value in next, orig, nil do
			copy[DeepCopy(orig_key)] = DeepCopy(orig_value)
		end
		setmetatable(copy, DeepCopy(getmetatable(orig)))
	else -- number, string, boolean, etc
		copy = orig
	end
	return copy
end

function Merge(t1, t2)
	local result = DeepCopy(t1)
	for k, v in pairs(t2) do
		if result[k] and type(result[k]) == 'table' and type(v) == 'table' then
			result[k] = Merge(result[k], v)
		else
			result[k] = DeepCopy(v)
		end
	end
	return result
end

function Compose(f1, f2) return function(...) return f1(f2(...)) end end

function DefaultScaleNone(value, level) return value end

function DefaultScaleFractionalPower(value, level) return value + value * math.sqrt(level) * GrowScaleFractionalPower end

function DefaultScaleLinear(value, level) return value + value * level * GrowScaleLinear end

function DefaultScaleSubQuadratic(value, level) return value + value * (level ^ 1.4) * GrowScaleSubQuadratic end

function Significant(n, x)
	if x == 0 then
		return 0
	end
	local sign = x < 0 and -1 or 1
	x = math.abs(x)
	-- determine the amount of shifts
	local decimal_places = math.ceil(math.log10(x))
	local shifts_wanted = n - decimal_places
	-- shift unwanted digits beyond the comma separator
	x = x * 10 ^ shifts_wanted
	-- round to nearest integer
	x = x >= 0 and math.floor(x + 0.5) or math.ceil(x - 0.5)
	-- shift back
	x = x / 10 ^ shifts_wanted
	return x*sign
end

function Significant3(x)
	return Significant(3, x)
end

Scaling =
{
	WeaponList =
	{
		BuildTimeComplete = DefaultScaleNone,
		ScrapPeriod = DefaultScaleNone,
		MetalCost = DefaultScaleSubQuadratic,
		EnergyCost = DefaultScaleSubQuadratic,
		MetalRepairCost = DefaultScaleSubQuadratic,
		EnergyRepairCost = DefaultScaleSubQuadratic,
	},
	WeaponFile =
	{
		WeaponMass = DefaultScaleFractionalPower,
		HitPoints = DefaultScaleFractionalPower,
		EnergyProductionRate = DefaultScaleLinear,
		MetalProductionRate = DefaultScaleLinear,
		EnergyStorageCapacity = DefaultScaleLinear,
		MetalStorageCapacity = DefaultScaleLinear,
		DeviceSplashDamage = DefaultScaleFractionalPower,
		DeviceSplashDamageMaxRadius = DefaultScaleFractionalPower,
		IncendiaryRadius = DefaultScaleFractionalPower,
		IncendiaryRadiusHeated = DefaultScaleFractionalPower,
		StructureSplashDamage = DefaultScaleFractionalPower,
		StructureSplashDamageMaxRadius = DefaultScaleFractionalPower,
		ReloadTime = function(value, level) return value * 0.98 ^ level end,
		RoundPeriod = function(value, level) return value * 0.98 ^ level end,
		MinFireSpeed = DefaultScaleNone,
		MaxFireSpeed = DefaultScaleFractionalPower,
		MinFireRadius = DefaultScaleNone,
		MaxFireRadius = DefaultScaleFractionalPower,
		MinFireAngle = function(value, level) return value - level / 3 end,
		MaxFireAngle = function(value, level) return value + level / 3 end,
		KickbackMean = DefaultScaleFractionalPower,
		KickbackStdDev = DefaultScaleNone,
		FireStdDev = function(value, level) return value * 0.98 ^ level end,
		FireStdDevAuto = function(value, level) return value * 0.98 ^ level end,
		Recoil = DefaultScaleFractionalPower,
		EnergyFireCost = DefaultScaleSubQuadratic,
		MetalFireCost = DefaultScaleSubQuadratic,
		RoundsEachBurst = function(value, level) return math.floor(value + value * level * (1 / 16)) end,
		BeamDuration = DefaultScaleLinear,
		HeatPeriod = DefaultScaleFractionalPower,
		CoolPeriod = function(value, level) return value * 0.99 ^ level end,
		CoolPeriodOverheated = function(value, level) return value * 0.99 ^ level end,
		EMPRadius = DefaultScaleFractionalPower,
		EMPDuration = DefaultScaleLinear,
		MaxRotationalSpeed = DefaultScaleFractionalPower,
	},
	ProjectileList =
	{
		ProjectileMass = DefaultScaleFractionalPower,
		ProjectileDrag = DefaultScaleNone,
		ProjectileThickness = DefaultScaleNone,
		ProjectileShootDownRadius = DefaultScaleNone,
		ProjectileShootDownRadiusBeamWidth = DefaultScaleNone,
		Impact = DefaultScaleFractionalPower,
		ImpactMomentumLimit = DefaultScaleFractionalPower,
		ProjectileDamage = DefaultScaleLinear,
		PenetrationDamage = DefaultScaleLinear,
		ProjectileSplashDamage = DefaultScaleLinear,
		ProjectileSplashDamageMaxRadius = DefaultScaleFractionalPower,
		ProjectileSplashMaxForce = DefaultScaleFractionalPower,
		WeaponDamageBonus = DefaultScaleFractionalPower,
		DeviceDamageBonus = DefaultScaleFractionalPower,
		EMPSensitivity = DefaultScaleNone,
		EMPMissileProbabilityOfCircling = DefaultScaleNone,
		ImpactSize = DefaultScaleFractionalPower,
		AntiAirDamage = DefaultScaleLinear,
		IncendiaryRadius = DefaultScaleFractionalPower,
		IncendiaryRadiusHeated = DefaultScaleFractionalPower,
		MinPenetration = DefaultScaleFractionalPower,
		FieldRadius = DefaultScaleFractionalPower,
		FieldStrengthMax = DefaultScaleLinear,
		FieldStrengthFalloffPower = DefaultScaleNone,
		RayDamage = DefaultScaleLinear,
		RayLength = DefaultScaleFractionalPower,
	}
}

WeaponUpgrades =
{
	{ mod = ".",                weapon_savename = "machinegun",  weapon_filename = "machinegun.lua",               projectile_savenames = { "machinegun" } },
	{ mod = ".",                weapon_savename = "minigun",     weapon_filename = "minigun.lua",                  projectile_savenames = { "minigun" } },
	{ mod = ".",                weapon_savename = "sniper",      weapon_filename = "snipertower.lua",              projectile_savenames = { "sniper" } },
	{ mod = ".",                weapon_savename = "sniper2",     weapon_filename = "sniper-ap.lua",                projectile_savenames = { "sniper2" } },
	{ mod = ".",                weapon_savename = "mortar",      weapon_filename = "mortar-incendiary.lua",        projectile_savenames = { "mortar" } },
	{ mod = ".",                weapon_savename = "mortar2",     weapon_filename = "mortar.lua",                   projectile_savenames = { "mortar2" } },
	{ mod = ".",                weapon_savename = "missile",     weapon_filename = "missileswarm.lua",             projectile_savenames = { "missile" } },
	{ mod = ".",                weapon_savename = "missileinv",  weapon_filename = "missileswarm_inverted.lua",    projectile_savenames = { "missile" } },
	{ mod = ".",                weapon_savename = "missile2",    weapon_filename = "missilelauncher.lua",          projectile_savenames = { "missile2" } },
	{ mod = ".",                weapon_savename = "missile2inv", weapon_filename = "missilelauncher_inverted.lua", projectile_savenames = { "missile2" } },
	{ mod = ".",                weapon_savename = "cannon",      weapon_filename = "cannon.lua",                   projectile_savenames = { "cannon" } },
	{ mod = ".",                weapon_savename = "laser",       weapon_filename = "beamlaser.lua",                projectile_savenames = { "laser" } },
	{ mod = "mods/weapon_pack", weapon_savename = "flak",        weapon_filename = "flak.lua",                     projectile_savenames = { "flak", "shrapnel" } },
	{ mod = "mods/weapon_pack", weapon_savename = "shotgun",     weapon_filename = "shotgun.lua",                  projectile_savenames = { "shotgun" } },
	{ mod = "mods/weapon_pack", weapon_savename = "rocketemp",   weapon_filename = "rocketemp.lua",                projectile_savenames = { "rocketemp" } },
	{ mod = "mods/weapon_pack", weapon_savename = "rocket",      weapon_filename = "rocket.lua",                   projectile_savenames = { "rocket" } },
	{ mod = "mods/weapon_pack", weapon_savename = "cannon20mm",  weapon_filename = "20mmcannon.lua",               projectile_savenames = { "cannon20mm" } },
	{ mod = "mods/weapon_pack", weapon_savename = "firebeam",    weapon_filename = "firebeam.lua",                 projectile_savenames = { "firebeam" } },
}
