
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


UpgradeCount = 64
GrowScaleFractionalPower = 0.15
GrowScaleLinear = 0.15
GrowScaleSubQuadratic = 0.15

function DefaultScaleNone(value, level) return value end
function DefaultScaleFractionalPower(value, level) return value + value*math.sqrt(level)*GrowScaleFractionalPower end
function DefaultScaleLinear(value, level) return value + value*level*GrowScaleLinear end
function DefaultScaleSubQuadratic(value, level) return value + value*level^1.4*GrowScaleSubQuadratic end
function Significant3Fn(x)
   local digits = 3 - math.ceil(math.log10(math.abs(x)))
   return x == 0 and 0 or math.floor(x * 10^digits + 0.5) / 10^digits
end


Scaling =
   {
      WeaponList =
	 {
	    BuildTimeComplete = DefaultScaleNoneFn,
	    ScrapPeriod = DefaultScaleNoneFn,
	    MetalCost = Compose(Significant3Fn, DefaultScaleSubQuadraticFn),
	    EnergyCost = Compose(Significant3Fn, DefaultScaleSubQuadraticFn),
	    MetalRepairCost = DefaultScaleSubQuadraticFn,
	    EnergyRepairCost = DefaultScaleSubQuadraticFn,
	 },
      WeaponFile =
	 {
	    WeaponMass = DefaultScaleFractionalPowerFn,
	    HitPoints = DefaultScaleFractionalPowerFn,
	    EnergyProductionRate = Compose(Significant3Fn, DefaultScaleLinearFn),
	    MetalProductionRate = Compose(Significant3Fn, DefaultScaleLinearFn),
	    EnergyStorageCapacity = Compose(Significant3Fn, DefaultScaleLinearFn),
	    MetalStorageCapacity = Compose(Significant3Fn, DefaultScaleLinearFn),
	    DeviceSplashDamage = DefaultScaleFractionalPowerFn,
	    DeviceSplashDamageMaxRadius = DefaultScaleFractionalPowerFn,
	    IncendiaryRadius = DefaultScaleFractionalPowerFn,
	    IncendiaryRadiusHeated = DefaultScaleFractionalPowerFn,
	    StructureSplashDamage = DefaultScaleFractionalPowerFn,
	    StructureSplashDamageMaxRadius = DefaultScaleFractionalPowerFn,
	    ReloadTime = function(value, level) return value*0.98^level end,
	    RoundPeriod = function(value, level) return value*0.98^level end,
	    MinFireSpeed = DefaultScaleNoneFn,
	    MaxFireSpeed = DefaultScaleFractionalPowerFn,
	    MinFireRadius = DefaultScaleNoneFn,
	    MaxFireRadius = DefaultScaleFractionalPowerFn,
	    MinFireAngle = function(value, level) return value-level/3 end,
	    MaxFireAngle = function(value, level) return value+level/3 end,
	    KickbackMean = DefaultScaleFractionalPowerFn,
	    KickbackStdDev = DefaultScaleNoneFn,
	    FireStdDev = function(value, level) return value*0.98^level end,
	    FireStdDevAuto = function(value, level) return value*0.98^level end,
	    Recoil = DefaultScaleFractionalPowerFn,
	    EnergyFireCost = DefaultScaleSubQuadraticFn,
	    MetalFireCost = DefaultScaleSubQuadraticFn,
	    RoundsEachBurst = function(value, level) return math.floor(value + value*level*(1/16)) end,
	    BeamDuration = DefaultScaleLinearFn,
	    HeatPeriod = DefaultScaleFractionalPowerFn, 
	    CoolPeriod = function(value, level) return value*0.99^level end,
	    CoolPeriodOverheated = function(value, level) return value*0.99^level end,
	    EMPRadius = DefaultScaleFractionalPowerFn,
	    EMPDuration = DefaultScaleLinearFn,
	    MaxRotationalSpeed = DefaultScaleFractionalPowerFn,
	 },
      ProjectileList =
	 {
	    ProjectileMass = DefaultScaleFractionalPowerFn,
	    ProjectileDrag = DefaultScaleNoneFn,
	    ProjectileThickness = DefaultScaleNoneFn,
	    ProjectileShootDownRadius = DefaultScaleNoneFn,
	    ProjectileShootDownRadiusBeamWidth = DefaultScaleNoneFn,
	    Impact = DefaultScaleFractionalPowerFn,
	    ImpactMomentumLimit = DefaultScaleFractionalPowerFn,
	    ProjectileDamage = DefaultScaleLinearFn,
	    PenetrationDamage = DefaultScaleLinearFn,
	    ProjectileSplashDamage = DefaultScaleLinearFn,
	    ProjectileSplashDamageMaxRadius = DefaultScaleFractionalPowerFn,
	    ProjectileSplashMaxForce = DefaultScaleFractionalPowerFn,
	    WeaponDamageBonus = DefaultScaleFractionalPowerFn,
	    DeviceDamageBonus = DefaultScaleFractionalPowerFn,
	    EMPSensitivity = DefaultScaleNoneFn,
	    EMPMissileProbabilityOfCircling = DefaultScaleNoneFn,
	    ImpactSize = DefaultScaleFractionalPowerFn,
	    AntiAirDamage = DefaultScaleLinearFn,
	    IncendiaryRadius = DefaultScaleFractionalPowerFn,
	    IncendiaryRadiusHeated = DefaultScaleFractionalPowerFn,
	    MinPenetration = DefaultScaleFractionalPowerFn,
	    FieldRadius = DefaultScaleFractionalPowerFn,
	    FieldStrengthMax = DefaultScaleLinearFn,
	    FieldStrengthFalloffPower = DefaultScaleNoneFn,
	    RayDamage = DefaultScaleLinearFn,
	    RayLength = DefaultScaleFractionalPowerFn,
	 }
   }

WeaponUpgradesHeader = {"mod", "weapon_savename", "weapon_filename", "projectile_savenames"}
WeaponUpgrades =
   {
      {".", "machinegun", "machinegun.lua", {"machinegun"}},
      {".", "minigun", "minigun.lua", {"minigun"}},
      {".", "sniper", "snipertower.lua", {"sniper"}},
      {".", "sniper2", "sniper-ap.lua", {"sniper2"}},
      {".", "mortar", "mortar-incendiary.lua", {"mortar"}},
      {".", "mortar2", "mortar.lua", {"mortar2"}},
      {".", "missile", "missileswarm.lua", {"missile"}},
      {".", "missileinv", "missileswarm_inverted.lua", {"missile"}},
      {".", "missile2", "missilelauncher.lua", {"missile2"}},
      {".", "missile2inv", "missilelauncher_inverted.lua", {"missile2"}},
      {".", "cannon", "cannon.lua", {"cannon"}},
      {".", "laser", "beamlaser.lua", {"laser"}},
      {"mods/weapon_pack", "flak", "flak.lua", {"flak", "shrapnel"}},
      {"mods/weapon_pack", "shotgun", "shotgun.lua", {"shotgun"}},
      {"mods/weapon_pack", "rocketemp", "rocketemp.lua", {"rocketemp"}},
      {"mods/weapon_pack", "rocket", "rocket.lua", {"rocket"}},
      {"mods/weapon_pack", "cannon20mm", "20mmcannon.lua", {"cannon20mm"}},
      {"mods/weapon_pack", "firebeam", "firebeam.lua", {"firebeam"}},
   }
