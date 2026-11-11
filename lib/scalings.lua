if not path then path = ".." end
dofile(path .. "/lib/util.lua")

UpgradeCount = 48 -- number of upgrades per weapon (release value; deploy.ps1 -UpgradeCount lowers it for testing)
-- Level 1 is the unmodified base weapon, so the upgrades are levels FirstLevel..LastLevel.
-- Levels name things (SaveNames, files, sprites, "Level N"); scaling functions get the upgrade step (1..UpgradeCount).
FirstLevel = 2
LastLevel = UpgradeCount + 1
function UpgradeStep(level) return level - 1 end
GrowScale = 0.15
-- rounds per burst doubles by step 48; fixed so a level's stats don't depend on UpgradeCount (tuned in PLAN step 2)
RoundsEachBurstGrowScale = 1 / 48

function DefaultScaleNone(value, level, grow_scale) return value end

function DefaultScaleFractionalPower(value, level, grow_scale)
   return value +
      value * math.sqrt(level) * (grow_scale and grow_scale or GrowScale)
end

function DefaultScaleLinear(value, level, grow_scale)
   return value +
      value * level * (grow_scale and grow_scale or GrowScale)
end

function DefaultScaleSubQuadratic(value, level, grow_scale)
   return value +
      value * (level ^ 1.3) * (grow_scale and grow_scale or GrowScale)
end

function BuildCostScale(value, level) return Significant3(DefaultScaleSubQuadratic(value, level, 2 * GrowScale)) end

function FireCostScale(value, level) return Significant3(DefaultScaleSubQuadratic(value, level, 1.2 * GrowScale)) end

function IncendiaryRadiusScale(value, level) return DefaultScaleFractionalPower(value, level, 2 * GrowScale) end

Scaling =
   {
      WeaponList =
	 {
	    BuildTimeComplete = DefaultScaleNone,
	    ScrapPeriod = DefaultScaleNone,
	    MetalCost = BuildCostScale,
	    EnergyCost = BuildCostScale,
	    MetalRepairCost = BuildCostScale,
	    EnergyRepairCost = BuildCostScale,
	 },
      WeaponFile =
	 {
	    WeaponMass = Compose(DefaultScaleFractionalPower, Significant3),
	    HitPoints = Compose(DefaultScaleFractionalPower, Significant3),
	    EnergyProductionRate = Compose(DefaultScaleLinear, Significant3),
	    MetalProductionRate = Compose(DefaultScaleLinear, Significant3),
	    EnergyStorageCapacity = Compose(DefaultScaleLinear, Significant3),
	    MetalStorageCapacity = Compose(DefaultScaleLinear, Significant3),
	    DeviceSplashDamage = DefaultScaleFractionalPower,
	    DeviceSplashDamageMaxRadius = DefaultScaleFractionalPower,
	    StructureSplashDamage = DefaultScaleFractionalPower,
	    StructureSplashDamageMaxRadius = DefaultScaleFractionalPower,
	    ReloadTime = function(value, level) return Significant3(value * 0.98 ^ level) end,
	    RoundPeriod = function(value, level) return Significant3(value * 0.98 ^ level) end,
	    MinFireSpeed = DefaultScaleNone,
	    MaxFireSpeed = DefaultScaleFractionalPower,
	    MinFireRadius = DefaultScaleNone,
	    MaxFireRadius = DefaultScaleFractionalPower,
	    MinFireAngle = function(value, level) return value - level / 3 end,
	    MaxFireAngle = function(value, level) return value + level / 3 end,
	    KickbackMean = DefaultScaleFractionalPower,
	    KickbackStdDev = DefaultScaleNone,
	    FireStdDev = function(value, level) return value * 0.99 ^ level end,
	    FireStdDevAuto = function(value, level) return value * 0.99 ^ level end,
	    Recoil = DefaultScaleFractionalPower,
	    EnergyFireCost = FireCostScale,
	    MetalFireCost = FireCostScale,
	    RoundsEachBurst = function(value, level) return math.floor(DefaultScaleLinear(value, level, RoundsEachBurstGrowScale)) end,
	    BeamDuration = DefaultScaleLinear,
	    BeamDamageMultiplier = DefaultScaleFractionalPower,
	    HeatPeriod = DefaultScaleNone,
	    CoolPeriod = DefaultScaleNone,
	    CoolPeriodOverheated = DefaultScaleNone,
	    MaxRotationalSpeed = DefaultScaleFractionalPower,
	 },
      ProjectileList =
	 {
	    AntiAirHitpoints = DefaultScaleFractionalPower,
	    ProjectileMass = DefaultScaleFractionalPower,
	    ProjectileDrag = DefaultScaleNone,
	    ProjectileThickness = DefaultScaleNone,
	    ProjectileShootDownRadius = DefaultScaleNone,
	    ProjectileShootDownRadiusBeamWidth = DefaultScaleNone,
	    Impact = DefaultScaleFractionalPower,
	    ImpactMomentumLimit = DefaultScaleFractionalPower,
	    ProjectileDamage = DefaultScaleLinear,
	    PenetrationDamage = DefaultScaleLinear,
	    ProjectileSplashDamage = DefaultScaleFractionalPower,
	    ProjectileSplashDamageMaxRadius = DefaultScaleFractionalPower,
	    ProjectileSplashMaxForce = DefaultScaleFractionalPower,
	    WeaponDamageBonus = DefaultScaleFractionalPower,
	    DeviceDamageBonus = DefaultScaleFractionalPower,
	    EMPRadius = DefaultScaleFractionalPower,
	    EMPDuration = DefaultScaleLinear,
	    EMPSensitivity = DefaultScaleNone,
	    EMPMissileProbabilityOfCircling = DefaultScaleNone,
	    ImpactSize = DefaultScaleFractionalPower,
	    AntiAirDamage = DefaultScaleLinear,
	    IncendiaryRadius = IncendiaryRadiusScale,
	    IncendiaryRadiusHeated = IncendiaryRadiusScale,
	    MinPenetration = DefaultScaleFractionalPower,
	    FieldRadius = DefaultScaleLinear,
	    FieldStrengthMax = DefaultScaleFractionalPower,
	    FieldStrengthFalloffPower = DefaultScaleNone,
	    RayDamage = DefaultScaleLinear,
	    RayLength = DefaultScaleFractionalPower,
	 }
   }

-- The registry. One entry per base weapon that gets levels.
--   mod, weapon_filename: where the original weapon file is (relative to the game's data folder)
--   projectile: the projectile tree to scale (children nested under the projectile that spawns them)
--   ammunition: High Seas ammunition projectiles that the level weapon fires at its own level
--   overlays: other mods' overlay files to replay on top of the original file (see llm/AGENTS.md, known issues)
--   upgrade_time: seconds a level upgrade takes (the level weapons' BuildTimeComplete); v1's value, else the reload time
--   build_cost_factor: multiplies the base build cost before scaling
WeaponUpgrades =
   {
      { mod = ".",                weapon_savename = "machinegun",  weapon_filename = "machinegun.lua",               projectile = { ["machinegun"] = {} },              ammunition = {}, upgrade_time = 1.5, build_cost_factor = 1.2 },
      { mod = ".",                weapon_savename = "minigun",     weapon_filename = "minigun.lua",                  projectile = { ["minigun"] = {} },                 ammunition = {}, upgrade_time = 6, build_cost_factor = 1.2 },
      { mod = ".",                weapon_savename = "sniper",      weapon_filename = "snipertower.lua",              projectile = { ["sniper"] = {} },                  ammunition = {}, upgrade_time = 2.1, build_cost_factor = 1 },
      { mod = ".",                weapon_savename = "sniper2",     weapon_filename = "sniper-ap.lua",                projectile = { ["sniper2"] = {} },                 ammunition = {}, upgrade_time = 5, build_cost_factor = 1 },
      { mod = ".",                weapon_savename = "mortar",      weapon_filename = "mortar-incendiary.lua",        projectile = { ["mortar"] = {} },                  ammunition = {}, upgrade_time = 9, build_cost_factor = 0.75 },
      { mod = ".",                weapon_savename = "mortar2",     weapon_filename = "mortar.lua",                   projectile = { ["mortar2"] = {} },                 ammunition = {}, upgrade_time = 9, build_cost_factor = 1 },
      { mod = ".",                weapon_savename = "missile",     weapon_filename = "missileswarm.lua",             projectile = { ["missile"] = {} },                 ammunition = {}, upgrade_time = 20.3, build_cost_factor = 1 },
      { mod = ".",                weapon_savename = "missileinv",  weapon_filename = "missileswarm_inverted.lua",    projectile = { ["missile"] = {} },                 ammunition = {}, upgrade_time = 20.3, build_cost_factor = 1 },
      { mod = ".",                weapon_savename = "missile2",    weapon_filename = "missilelauncher.lua",          projectile = { ["missile2"] = {} },                ammunition = {}, upgrade_time = 21, build_cost_factor = 1 },
      { mod = ".",                weapon_savename = "missile2inv", weapon_filename = "missilelauncher_inverted.lua", projectile = { ["missile2"] = {} },                ammunition = {}, upgrade_time = 21, build_cost_factor = 1 },
      { mod = ".",                weapon_savename = "cannon",      weapon_filename = "cannon.lua",                   projectile = { ["cannon"] = {} },                  ammunition = {}, upgrade_time = 26, build_cost_factor = 1 },
      { mod = ".",                weapon_savename = "laser",       weapon_filename = "beamlaser.lua",                projectile = { ["laser"] = {} },                   ammunition = {}, upgrade_time = 24, build_cost_factor = 1 },
      { mod = "mods/weapon_pack", weapon_savename = "flak",        weapon_filename = "flak.lua",                     projectile = { ["flak"] = { ["shrapnel"] = {} } }, ammunition = {}, upgrade_time = 6.75, build_cost_factor = 0.5 },
      { mod = "mods/weapon_pack", weapon_savename = "shotgun",     weapon_filename = "shotgun.lua",                  projectile = { ["shotgun"] = {} },                 ammunition = {}, upgrade_time = 9, build_cost_factor = 1 },
      { mod = "mods/weapon_pack", weapon_savename = "rocketemp",   weapon_filename = "rocketemp.lua",                projectile = { ["rocketemp"] = {} },               ammunition = {}, upgrade_time = 10, build_cost_factor = 1 },
      { mod = "mods/weapon_pack", weapon_savename = "rocket",      weapon_filename = "rocket.lua",                   projectile = { ["rocket"] = {} },                  ammunition = {}, upgrade_time = 12, build_cost_factor = 1 },
      { mod = "mods/weapon_pack", weapon_savename = "cannon20mm",  weapon_filename = "20mmcannon.lua",               projectile = { ["cannon20mm"] = {} },              ammunition = {}, upgrade_time = 26, build_cost_factor = 1 },
      { mod = "mods/weapon_pack", weapon_savename = "firebeam",    weapon_filename = "firebeam.lua",                 projectile = { ["firebeam"] = {} },                ammunition = {}, upgrade_time = 14, build_cost_factor = 1 },
   }
if moonshot then
   for _, v in pairs({
	 { mod = "mods/dlc1_weapons", weapon_savename = "buzzsaw",   weapon_filename = "buzzsaw.lua",   projectile = { ["buzzsaw"] = {} },                           ammunition = {}, upgrade_time = 9, build_cost_factor = 3 },
	 { mod = "mods/dlc_smokebomb",  weapon_savename = "smokebomb", weapon_filename = "smokebomb.lua", projectile = { ["smokebomb"] = { ["smoke"] = {} } },         ammunition = {}, upgrade_time = 9, build_cost_factor = 1 },
	 { mod = "mods/dlc1_weapons", weapon_savename = "howitzer",  weapon_filename = "howitzer.lua",  projectile = { ["howitzer"] = {} },                          ammunition = {}, upgrade_time = 26, build_cost_factor = 1 },
	 { mod = "mods/dlc1_weapons", weapon_savename = "magnabeam", weapon_filename = "magnabeam.lua", projectile = { ["magnabeam"] = { ["magneticfield"] = {} } }, ammunition = {}, upgrade_time = 28, build_cost_factor = 0.5 },
   }) do
      table.insert(WeaponUpgrades, v)
   end
end

if dlc2Var_Active then
   for _, v in pairs({
	 { mod = "mods/dlc_harpoon", weapon_savename = "harpoon", weapon_filename = "harpoon.lua", projectile = { ["harpoon_default"] = {}, ["decoy"] = {}, ["control"] = {} }, ammunition = { ["harpoon_default"] = {}, ["decoy"] = {}, ["control"] = {} }, overlays = { { mod = "mods/dlc2", file = "mods/dlc_harpoon/weapons/harpoon.lua" }, { mod = "mods/dlc_harpoon_skirmish", file = "mods/dlc_harpoon/weapons/harpoon.lua" } }, upgrade_time = 30, build_cost_factor = 1 },
	 { mod = "mods/dlc2", weapon_savename = "runway", weapon_filename = "runway.lua", projectile = { ["nighthawk"] = { ["paveway"] = { ["flamingpaveway"] = {} } }, ["thunderbolt"] = { ["bomb"] = { ["flamingbomb"] = {} } } }, ammunition = { ["nighthawk"] = {}, ["thunderbolt"] = {} }, upgrade_time = 15, build_cost_factor = 1 },
   }) do
      table.insert(WeaponUpgrades, v)
   end
end
