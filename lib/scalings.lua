if not path then path = ".." end
dofile(path .. "/lib/util.lua")

UpgradeCount = 48 -- number of upgrades per weapon (release value; deploy.ps1 -UpgradeCount lowers it for testing)
-- Level 1 is the unmodified base weapon, so the upgrades are levels FirstLevel..LastLevel.
-- Levels name things (SaveNames, files, sprites, "Level N"); scaling functions get the upgrade step (1..UpgradeCount).
FirstLevel = 2
LastLevel = UpgradeCount + 1
function UpgradeStep(level) return level - 1 end
GrowScale = 0.15 -- base growth rate; secondary stats (range, splash, hitpoints, ...) use it unchanged
-- Balance parameters, tuned against v1 with lib/balance_report.lua over levels 2..24 on 2026-11-11
-- (llm/DESIGN.md, "Balance against v1"). Only these (and build_cost_factor per weapon) are tuned; the curve shapes stay.
DamageGrowScale = 0.125                  -- linear: direct damage (ProjectileDamage, PenetrationDamage, RayDamage, AntiAirDamage); v1's rate (set by the owner)
RoundsEachBurstGrowScale = 1 / 24        -- linear: rounds per burst, and beam duration for beams (set by the owner: doubles by step 24)
BuildCostGrowScale = 0.50                -- sub-quadratic: build cost
FireCostGrowScale = 0.10                 -- sub-quadratic: fire cost
ReloadDecay = 0.98                       -- geometric: reload time (set by the owner)

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

function BuildCostScale(value, level) return Significant3(DefaultScaleSubQuadratic(value, level, BuildCostGrowScale)) end

function FireCostScale(value, level) return Significant3(DefaultScaleSubQuadratic(value, level, FireCostGrowScale)) end

function DamageScale(value, level) return DefaultScaleLinear(value, level, DamageGrowScale) end

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
	    ReloadTime = function(value, level) return Significant3(value * ReloadDecay ^ level) end,
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
	    BeamDuration = function(value, level) return DefaultScaleLinear(value, level, RoundsEachBurstGrowScale) end, -- beams' rounds per burst
	    BeamDamageMultiplier = DefaultScaleNone, -- beam damage grows through ProjectileDamage and BeamDuration
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
	    ProjectileDamage = DamageScale,
	    PenetrationDamage = DamageScale,
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
	    AntiAirDamage = DamageScale,
	    IncendiaryRadius = IncendiaryRadiusScale,
	    IncendiaryRadiusHeated = IncendiaryRadiusScale,
	    MinPenetration = DefaultScaleFractionalPower,
	    FieldRadius = DefaultScaleLinear,
	    FieldStrengthMax = DefaultScaleFractionalPower,
	    FieldStrengthFalloffPower = DefaultScaleNone,
	    RayDamage = DamageScale,
	    RayLength = DefaultScaleFractionalPower,
	 }
   }

-- The scaling table of one stage ("WeaponFile" or "ProjectileList") for a registry entry: Scaling[stage] with the
-- entry's own `scaling[stage]` rules on top (a rule there replaces the general one or adds a field).
function ScalingFor(weapon_upgrade, stage)
   local overrides = weapon_upgrade and weapon_upgrade.scaling and weapon_upgrade.scaling[stage]
   if not overrides then return Scaling[stage] end
   local result = {}
   for field, fn in pairs(Scaling[stage]) do result[field] = fn end
   for field, fn in pairs(overrides) do result[field] = fn end
   return result
end

-- Energy Dome (owner, 2026-11-11): it grows by firing longer. Its bolts keep coming every RoundPeriod for the whole
-- burst, so RoundsEachBurst grows at twice the general rate while RoundPeriod stays; the dome keeps its size
-- (fire speed) and its shape (spread)
DomeScaling =
   {
      WeaponFile = { RoundsEachBurst = function(value, level) return math.floor(DefaultScaleLinear(value, level, 2 * RoundsEachBurstGrowScale)) end,
                     RoundPeriod = DefaultScaleNone, MinFireSpeed = DefaultScaleNone, MaxFireSpeed = DefaultScaleNone,
                     FireStdDev = DefaultScaleNone, FireStdDevAuto = DefaultScaleNone },
   }

-- Orbital laser (High Seas): its marker shell orders a beam (dlc2_orbital = { Ammo = <tag>, Duration = ..., ... }) from
-- a hidden weapon, the beam source. Level markers order level beams; the beam's Duration grows like beam duration.
-- The orbital beams' damage comes from their BeamDamage function (ProjectileDamage alone changed nothing in-game,
-- 2026-11-11), so that function's result grows at the damage rate.
OrbitalLaserScaling =
   {
      ProjectileList =
         {
            BeamDamage = function(fn, level)
               if type(fn) ~= "function" then return fn end
               local factor = DamageScale(1, level)
               return function(...) return fn(...) * factor end
            end,
            dlc2_orbital = function(value, level)
               local result = DeepCopy(value)
               if type(result.Duration) == "number" then
                  result.Duration = DefaultScaleLinear(result.Duration, level, RoundsEachBurstGrowScale)
               end
               return result
            end,
         },
   }
-- the beam source's original file (logged 2026-11-11) and the beams that get level ammunition there
-- (weapons/orbital_laser_source.lua wraps it)
OrbitalLaserSource =
   {
      weapon_savename = "orbital_laser_source",
      mod = "mods/dlc_harpoon",
      file = "mods/dlc_harpoon/weapons/orbital_laser_source.lua",
      -- the original has no ammunition; High Seas' overlay adds it (found in-game 2026-11-11)
      overlays = { { mod = "mods/dlc2", file = "mods/dlc_harpoon/weapons/orbital_laser_source.lua" } },
      beams = { ["ol_beam_sweep"] = true, ["ol_beam_focus"] = true },
   }

-- Transformed projectiles: the game makes "flaming" .. SaveName (MakeFlamingVersion, used when a projectile passes a
-- firebeam) and "damaged" .. SaveName (e.g. damagedmissile2) versions of projectiles. Each projectile in a registry
-- tree gets the ones that exist as children (recursively, so damagedmissile2 -> flamingdamagedmissile2), so a level
-- projectile turns into the same level of its transformed version.
TransformedProjectilePrefixes = { "flaming", "damaged" }

-- The registry. One entry per base weapon that gets levels.
--   mod, weapon_filename: where the original weapon file is (relative to the game's data folder)
--   projectile: the projectile tree to scale (children nested under the projectile that spawns them)
--   ammunition: High Seas ammunition projectiles that the level weapon fires at its own level
--   overlays: other mods' overlay files to replay on top of the original file (see llm/AGENTS.md, known issues)
--   scaling: optional; per-weapon rules { WeaponFile = { Field = fn }, ProjectileList = { Field = fn } } on top of
--     Scaling (see ScalingFor); ProjectileList rules apply to the entry's whole projectile tree
--   original_file: optional; the original file's path if it isn't <mod>/weapons/<weapon_filename> (the file still runs
--     with `path` set to mod)
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
	 { mod = "mods/dlc2", weapon_savename = "runway2", weapon_filename = "runway2.lua", original_file = "mods/dlc2_skirmish/mods/dlc2/weapons/runway2.lua", projectile = { ["nighthawk"] = { ["paveway"] = { ["flamingpaveway"] = {} } }, ["thunderbolt"] = { ["bomb"] = { ["flamingbomb"] = {} } } }, ammunition = { ["nighthawk"] = {}, ["thunderbolt"] = {} }, upgrade_time = 15, build_cost_factor = 1 },
	 { mod = "mods/dlc2", weapon_savename = "turret", weapon_filename = "turret.lua", projectile = { ["turret"] = {} }, ammunition = {}, upgrade_time = 25, build_cost_factor = 1 },
	 { mod = "mods/dlc2", weapon_savename = "turret2", weapon_filename = "turret2.lua", projectile = { ["turret"] = {} }, ammunition = {}, upgrade_time = 30, build_cost_factor = 1 },
	 { mod = "mods/dlc2", weapon_savename = "turret2_focus", weapon_filename = "turret2_focus.lua", projectile = { ["turret"] = {} }, ammunition = {}, upgrade_time = 30, build_cost_factor = 1 },
	 { mod = "mods/dlc2", weapon_savename = "turret3", weapon_filename = "turret3.lua", projectile = { ["turret"] = {} }, ammunition = {}, upgrade_time = 35, build_cost_factor = 1 },
	 { mod = "mods/dlc2", weapon_savename = "turret3_focus", weapon_filename = "turret3_focus.lua", projectile = { ["turret"] = {} }, ammunition = {}, upgrade_time = 35, build_cost_factor = 1 },
	 { mod = "mods/dlc2", weapon_savename = "dome", weapon_filename = "dome.lua", projectile = { ["dome"] = { ["dome_barrier"] = {} } }, ammunition = {}, scaling = DomeScaling, upgrade_time = 15, build_cost_factor = 0.5 },
	 { mod = "mods/dlc2", weapon_savename = "subswarm", weapon_filename = "subswarm.lua", projectile = { ["missile"] = {} }, ammunition = {}, upgrade_time = 20, build_cost_factor = 1 },
	 { mod = "mods/dlc2", weapon_savename = "sublauncher", weapon_filename = "sublauncher.lua", projectile = { ["missile2"] = {} }, ammunition = {}, upgrade_time = 25, build_cost_factor = 1 },
	 { mod = "mods/dlc2", weapon_savename = "orbital_laser", weapon_filename = "orbital_laser.lua", projectile = { ["ol_marker_sweep"] = { ["ol_beam_sweep"] = {} }, ["ol_marker_focus"] = { ["ol_beam_focus"] = {} } }, ammunition = { ["ol_marker_sweep"] = {}, ["ol_marker_focus"] = {} }, scaling = OrbitalLaserScaling, upgrade_time = 10, build_cost_factor = 1 },
	 { mod = "mods/dlc2", weapon_savename = "orbital_laser2", weapon_filename = "orbital_laser2.lua", projectile = { ["ol_marker_sweep"] = { ["ol_beam_sweep"] = {} }, ["ol_marker_focus"] = { ["ol_beam_focus"] = {} } }, ammunition = { ["ol_marker_sweep"] = {}, ["ol_marker_focus"] = {} }, scaling = OrbitalLaserScaling, upgrade_time = 10, build_cost_factor = 1 },
   }) do
      table.insert(WeaponUpgrades, v)
   end
end
