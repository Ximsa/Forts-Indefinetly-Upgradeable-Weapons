-- Balance report: v2 against v1, level by level (PLAN step 2, llm/DESIGN.md "Balance against v1").
-- Run from lib/:
--   lua55 balance_report.lua          writes ../dump/balance_<date>.txt and prints the summary
--   lua55 balance_report.lua tune     also searches the balance parameters for the smallest deviation
-- Sources: v2 = this repo's lib/scalings.lua applied to the base values; v1 = its generated level files in
-- data/mods/iuw/weapons and its formulas (llm/V1.md); base values = the readable game files, DLC weapons from
-- data/mods/iuw2/dump. Power is direct damage x rounds per burst (x beam duration x beam damage multiplier for beams)
-- / reload time, as a multiple of the base weapon. Deviation = v2 / v1 - 1; averages are over levels 2..49 of
-- |ln(v2 / v1)| over levels 2..24 (see balance_to), shown as a percentage.

local env = dofile("offline_env.lua")
env.Init(arg and arg[2])
env.LoadBaseLists(function(message) io.stderr:write(message .. "\n") end)
path = ".."
moonshot, dlc2Var_Active = true, true
dofile("../lib/scalings.lua")

local tune = arg and arg[1] == "tune"
local levels_from, levels_to = 2, 49
-- levels the averages and the tuning use: up to level 24, the last level before 1-round weapons get a second round
-- (level 25); the jump in whole rounds distorts the fit too much (owner, 2026-11-11)
local balance_to = 24
local v1_root = env.game_data .. "/mods/iuw/weapons"

-- v1's upgrade price constants U (metal, energy), from its weapons/weapon_list.lua (llm/V1.md)
local V1Prices = {
   minigun = { 110, 240 }, sniper2 = { 120, 480 }, mortar2 = { 170, 620 }, shotgun = { 140, 700 },
   rocket = { 190, 900 }, cannon20mm = { 200, 900 }, cannon = { 400, 2200 }, firebeam = { 220, 1500 },
   laser = { 400, 2000 }, buzzsaw = { 150, 600 }, smokebomb = { 140, 700 }, howitzer = { 430, 3000 },
   magnabeam = { 160, 900 },
}

-- base build costs of the packed DLC weapons, read from the game log on 2026-11-11 (a temporary Log in weapons/weapon_list.lua)
local DlcBaseCosts = {
   buzzsaw = { MetalCost = 200, EnergyCost = 2000 }, smokebomb = { MetalCost = 200, EnergyCost = 800 },
   howitzer = { MetalCost = 1000, EnergyCost = 9000 }, magnabeam = { MetalCost = 600, EnergyCost = 5000 },
   harpoon = { MetalCost = 250, EnergyCost = 3000 }, runway = { MetalCost = 500, EnergyCost = 4000 },
}

-- weapon-file dump sections for weapons whose file isn't readable
local DumpSections = {
   buzzsaw = "Buzzsaw [buzzsaw]", smokebomb = "Smokebomb [smokebomb]", howitzer = "Howitzer [howitzer]",
   magnabeam = "Magnabeam [magnabeam]", harpoon = "harpoon [decoy]", runway = "thunderbolt [thunderbolt]",
}

-- weapons v1 never had, each next to a comparable weapon that both versions have (PLAN step 2, item 3)
local Comparisons = {
   { "machinegun", "minigun" }, { "sniper", "sniper2" }, { "mortar", "mortar2" }, { "missile", "rocket" },
   { "missile2", "rocket" }, { "flak", "shotgun" }, { "rocketemp", "rocket" }, { "harpoon", "cannon" },
   { "runway", "howitzer" },
}

---------------------------------------------------------------------------------------------------------------
-- base values

local weapon_dump = env.LoadWeaponDump()
local projectile_dump = env.LoadProjectileDump()

local function Numbers(t)
   local result = {}
   for k, v in pairs(t) do
      if type(v) == "number" or type(v) == "boolean" or type(v) == "string" then result[k] = v end
   end
   return result
end

local function LoadBase(weapon_upgrade)
   local name = weapon_upgrade.weapon_savename
   local base = { name = name, upgrade = weapon_upgrade }
   -- weapon list entry
   local list_entry = FindWeapon(name) or DlcBaseCosts[name]
   if list_entry then base.MetalCost, base.EnergyCost = list_entry.MetalCost, list_entry.EnergyCost end
   -- weapon file globals
   local globals
   if DumpSections[name] then
      globals = weapon_dump[DumpSections[name]]
   else
      local mod_path = weapon_upgrade.mod == "." and env.game_data or (env.game_data .. "/" .. weapon_upgrade.mod)
      local ok, result = pcall(env.LoadWeaponFile, mod_path .. "/weapons/" .. weapon_upgrade.weapon_filename, mod_path)
      if ok then globals = Numbers(result) else base.error = tostring(result) end
   end
   if not globals then
      base.error = base.error or "no weapon file values"
      return base
   end
   base.weapon = globals
   -- projectile
   local projectile_name = globals.Projectile
   base.projectile = projectile_name and (FindProjectile(projectile_name) or projectile_dump[projectile_name])
   if base.projectile then
      local p = base.projectile
      if (p.ProjectileDamage or 0) > 0 then
         base.damage_field = "ProjectileDamage"
      elseif (p.ProjectileSplashDamage or 0) > 0 then
         base.damage_field = "ProjectileSplashDamage"
      end
   end
   return base
end

---------------------------------------------------------------------------------------------------------------
-- one weapon at one level, in v2 and v1

-- the per-burst numbers both versions are compared on
local function Burst(weapon, damage, splash_radius)
   local beam = weapon.IsBeam and (weapon.BeamDuration or 1) * (weapon.BeamDamageMultiplier or 1) or 1
   local damage_per_burst = damage and damage * (weapon.RoundsEachBurst or 1) * beam or nil
   local energy = (weapon.EnergyFireCost or 0) * (weapon.IsBeam and (weapon.BeamDuration or 1) or 1)
   local metal = (weapon.MetalFireCost or 0) * (weapon.IsBeam and (weapon.BeamDuration or 1) or 1)
   return {
      power = damage_per_burst and weapon.ReloadTime and damage_per_burst / weapon.ReloadTime or nil,
      fire_cost_per_damage = damage_per_burst and damage_per_burst > 0 and (energy + metal) / damage_per_burst or nil,
      fire_speed = weapon.MaxFireSpeed,
      splash_radius = splash_radius,
      hitpoints = weapon.HitPoints,
      spread = weapon.FireStdDev,
      rounds = weapon.RoundsEachBurst or 1,
   }
end

-- mirrors weapons/weapon_file_upgrade.lua (AdjustRoundsEachBurst, ApplyScaling, ExtendBeamTable)
local function V2Weapon(base_weapon, step)
   local weapon = {}
   for k, v in pairs(base_weapon) do weapon[k] = v end
   if not weapon.RoundsEachBurst then
      weapon.RoundsEachBurst = 1
      weapon.RoundPeriod = 1
   end
   local base_beam_duration = weapon.BeamDuration
   for field, fn in pairs(Scaling.WeaponFile) do
      if type(weapon[field]) == "number" then weapon[field] = fn(weapon[field], step) end
   end
   if weapon.IsBeam then
      weapon.RoundsEachBurst = 1
      weapon.EnergyFireCost = weapon.EnergyFireCost * base_beam_duration / weapon.BeamDuration
   end
   return weapon
end

local function V2(base, step)
   local weapon = step == 0 and base.weapon or V2Weapon(base.weapon, step)
   local p = base.projectile or {}
   local function Projectile(field)
      if not p[field] then return nil end
      if step == 0 then return p[field] end
      return Scaling.ProjectileList[field](p[field], step)
   end
   local damage = base.damage_field and Projectile(base.damage_field)
   local burst = Burst(weapon, damage, Projectile("ProjectileSplashDamageMaxRadius"))
   if base.MetalCost then
      local factor = base.upgrade.build_cost_factor or 1
      local function Spend(field)
         local cost = base[field]
         if step == 0 then return cost end
         return cost + Scaling.WeaponList[field](cost * factor, step) - Scaling.WeaponList[field](cost * factor, 0)
      end
      burst.metal, burst.energy = Spend("MetalCost"), Spend("EnergyCost")
   end
   return burst
end

-- v1's level file values (only top-level assignments of the fields that matter)
local V1Fields = { ReloadTime = true, RoundsEachBurst = true, BeamDuration = true, EnergyFireCost = true,
   MetalFireCost = true, MinFireSpeed = true, MaxFireSpeed = true, FireStdDev = true, Projectile = true }

local v1_cache = {}
local function V1File(name, level)
   local key = name .. level
   if v1_cache[key] ~= nil then return v1_cache[key] end
   local file = io.open(v1_root .. "/" .. name .. "/_" .. name .. level .. ".lua", "r")
   if not file then v1_cache[key] = false return false end
   local values = {}
   for raw_line in file:lines() do
      local line = raw_line:gsub("%c+$", "")
      local field, expression = line:match("^([%a_][%w_]*)%s*=%s*(.-)%s*$")
      if field and V1Fields[field] then
         local chunk = load("return " .. expression, field, "t", setmetatable({}, { __index = values }))
         local ok, value = pcall(chunk)
         if ok and (type(value) == "number" or type(value) == "string") then values[field] = value end
      end
   end
   file:close()
   v1_cache[key] = values
   return values
end

local function V1(base, level)
   local weapon = {}
   for k, v in pairs(base.weapon) do weapon[k] = v end
   if level > 1 then
      local values = V1File(base.name, level)
      if not values then return nil end
      -- BeamDuration first, since v1 writes EnergyFireCost = total / BeamDuration
      for k, v in pairs(values) do weapon[k] = v end
   end
   local p = base.projectile or {}
   -- v1 scaled the projectile only where its level file fires a level projectile (not for laser and firebeam)
   local l = (weapon.Projectile ~= base.weapon.Projectile) and level - 1 or 0
   local damage = base.damage_field and p[base.damage_field] and p[base.damage_field] * (1 + 0.125 * l)
   local splash_radius = p.ProjectileSplashDamageMaxRadius and p.ProjectileSplashDamageMaxRadius * (1 + 0.125 * math.sqrt(l))
   local burst = Burst(weapon, damage, splash_radius)
   local prices = V1Prices[base.name]
   if base.MetalCost and prices then
      local metal, energy = base.MetalCost, base.EnergyCost
      for upgrade_level = 2, level do
         metal = metal + prices[1] * (1 + upgrade_level / 6)
         energy = energy + prices[2] * (1 + upgrade_level / 6)
      end
      burst.metal, burst.energy = metal, energy
   end
   return burst
end

---------------------------------------------------------------------------------------------------------------
-- comparison

local bases, bases_by_name = {}, {}
for _, weapon_upgrade in ipairs(WeaponUpgrades) do
   local base = LoadBase(weapon_upgrade)
   table.insert(bases, base)
   bases_by_name[base.name] = base
end

local shared = {}
for _, base in ipairs(bases) do
   if V1Prices[base.name] and base.weapon then table.insert(shared, base) end
end

local function Ratio(a, b) if a and b and b ~= 0 then return a / b end end

-- relative (to base) metrics where that makes sense; absolute for spend
local function Relative(values, base_values)
   return {
      power = Ratio(values.power, base_values.power),
      fire_cost_per_damage = Ratio(values.fire_cost_per_damage, base_values.fire_cost_per_damage),
      metal = values.metal, energy = values.energy,
      fire_speed = Ratio(values.fire_speed, base_values.fire_speed),
      splash_radius = Ratio(values.splash_radius, base_values.splash_radius),
      hitpoints = Ratio(values.hitpoints, base_values.hitpoints),
      spread = Ratio(values.spread, base_values.spread),
      rounds = values.rounds,
   }
end

local Compared = { "power", "metal", "energy", "fire_cost_per_damage" }

-- per weapon: rows per level and mean |ln(v2/v1)| per compared metric
local function Compare(base)
   local v2_base, v1_base = V2(base, 0), V1(base, 1)
   local rows, sums, counts = {}, {}, {}
   for level = levels_from, levels_to do
      local v1 = V1(base, level)
      if v1 then
         local row = { level = level, v2 = Relative(V2(base, level - 1), v2_base), v1 = Relative(v1, v1_base) }
         for _, metric in ipairs(Compared) do
            local a, b = row.v2[metric], row.v1[metric]
            if a and b and a > 0 and b > 0 and level <= balance_to then
               sums[metric] = (sums[metric] or 0) + math.abs(math.log(a / b))
               counts[metric] = (counts[metric] or 0) + 1
            end
         end
         table.insert(rows, row)
      end
   end
   local averages = {}
   for metric, sum in pairs(sums) do averages[metric] = sum / counts[metric] end
   return rows, averages
end

-- objective: mean over shared weapons of the average deviations of the given metrics
local function Objective(metrics)
   local total, count = 0, 0
   for _, base in ipairs(shared) do
      local _, averages = Compare(base)
      for _, metric in ipairs(metrics) do
         if averages[metric] then total, count = total + averages[metric], count + 1 end
      end
   end
   return count > 0 and total / count or math.huge
end

local function Percent(log_deviation) return log_deviation and string.format("%5.0f%%", (math.exp(log_deviation) - 1) * 100) or "   n/a" end

---------------------------------------------------------------------------------------------------------------
-- tuning

local tuning_lines = {}
local function TuneLog(line) print(line) table.insert(tuning_lines, line) end

local function Search(metrics, grids)
   local best, best_value = nil, math.huge
   local names = {}
   for name in pairs(grids) do table.insert(names, name) end
   table.sort(names)
   local function Recurse(i, chosen)
      if i > #names then
         for name, value in pairs(chosen) do _G[name] = value end
         local value = Objective(metrics)
         if value < best_value then
            best_value = value
            best = {}
            for k, v in pairs(chosen) do best[k] = v end
         end
         return
      end
      for _, value in ipairs(grids[names[i]]) do
         chosen[names[i]] = value
         Recurse(i + 1, chosen)
      end
   end
   Recurse(1, {})
   for name, value in pairs(best) do _G[name] = value end
   return best, best_value
end

local function Range(from, to, step)
   local values = {}
   for i = 0, math.floor((to - from) / step + 0.5) do table.insert(values, from + i * step) end
   return values
end

if tune then
   local current = string.format("DamageGrowScale=%.4f RoundsEachBurstGrowScale=%.4f ReloadDecay=%.4f BuildCostGrowScale=%.4f FireCostGrowScale=%.4f",
      DamageGrowScale, RoundsEachBurstGrowScale, ReloadDecay, BuildCostGrowScale, FireCostGrowScale)
   TuneLog("before: " .. current)
   TuneLog(string.format("  power %s, metal %s, fire cost per damage %s", Percent(Objective({ "power" })),
      Percent(Objective({ "metal" })), Percent(Objective({ "fire_cost_per_damage" }))))
   -- power isn't tuned: the owner set damage (v1's 0.125), rounds per burst (1/24) and reload decay (0.98)
   -- spend: build cost (metal is compared; energy is reported)
   Search({ "metal" }, { BuildCostGrowScale = Range(0.05, 2, 0.01) })
   -- fire cost per point of damage, given the power parameters
   Search({ "fire_cost_per_damage" }, { FireCostGrowScale = Range(0.0, 1, 0.005) })
   TuneLog(string.format("after:  DamageGrowScale=%.4f RoundsEachBurstGrowScale=1/%d ReloadDecay=%.4f BuildCostGrowScale=%.2f FireCostGrowScale=%.3f",
      DamageGrowScale, math.floor(1 / RoundsEachBurstGrowScale + 0.5), ReloadDecay, BuildCostGrowScale, FireCostGrowScale))
   TuneLog(string.format("  power %s, metal %s, fire cost per damage %s", Percent(Objective({ "power" })),
      Percent(Objective({ "metal" })), Percent(Objective({ "fire_cost_per_damage" }))))
   -- per-weapon build_cost_factor that would make its metal spend match v1 best, for the owner to judge
   TuneLog("build_cost_factor that fits v1's metal spend best, per weapon (current in brackets):")
   for _, base in ipairs(shared) do
      if base.MetalCost then
         local original = base.upgrade.build_cost_factor
         local best_factor, best_value = original, math.huge
         for _, factor in ipairs(Range(0.1, 5, 0.05)) do
            base.upgrade.build_cost_factor = factor
            local _, averages = Compare(base)
            if averages.metal and averages.metal < best_value then best_factor, best_value = factor, averages.metal end
         end
         base.upgrade.build_cost_factor = original
         TuneLog(string.format("  %-11s %.2f (%.2f), metal deviation %s", base.name, best_factor, original or 1, Percent(best_value)))
      end
   end
end

---------------------------------------------------------------------------------------------------------------
-- output

local out = {}
local function Out(line) table.insert(out, line or "") end

local function F(x, digits)
   if not x then return "n/a" end
   if math.abs(x) >= 1000 then return string.format("%.0f", x) end
   return string.format("%." .. (digits or 2) .. "f", x)
end

local function Deviation(a, b)
   if a and b and b ~= 0 then return string.format("%+.0f%%", (a / b - 1) * 100) end
   return "n/a"
end

Out("IUW balance report " .. os.date("%Y-%m-%d") .. " (lib/balance_report.lua" .. (tune and " tune" or "") .. ")")
Out(string.format("parameters: GrowScale=%.3f DamageGrowScale=%.4f RoundsEachBurstGrowScale=%.5f ReloadDecay=%.4f BuildCostGrowScale=%.3f FireCostGrowScale=%.3f",
   GrowScale, DamageGrowScale, RoundsEachBurstGrowScale, ReloadDecay, BuildCostGrowScale, FireCostGrowScale))
Out("Power, fire cost per damage, fire speed, splash radius, hitpoints and spread are multiples of the base weapon;")
Out("metal and energy are the totals spent to reach the level. Deviation = v2 / v1 - 1.")
for _, line in ipairs(tuning_lines) do Out("tune: " .. line) end
Out()

-- summary
Out("Summary: average deviation over levels 2.." .. balance_to .. ", and v2 / v1 at levels 10, 25, 49")
Out(string.format("%-11s %-8s %7s %7s %7s %7s   %-24s %-24s", "weapon", "damage", "power", "metal", "energy", "fire/dmg", "power @10/25/49", "metal @10/25/49"))
local summary_rows = {}
for _, base in ipairs(shared) do
   local rows, averages = Compare(base)
   local function At(level, metric)
      for _, row in ipairs(rows) do
         if row.level == level then
            local r = Ratio(row.v2[metric], row.v1[metric])
            return r and string.format("%.2f", r) or "n/a"
         end
      end
      return "n/a"
   end
   local line = string.format("%-11s %-8s %7s %7s %7s %7s   %-24s %-24s", base.name,
      base.damage_field == "ProjectileDamage" and "direct" or (base.damage_field and "splash" or "none"),
      Percent(averages.power), Percent(averages.metal), Percent(averages.energy), Percent(averages.fire_cost_per_damage),
      At(10, "power") .. " " .. At(25, "power") .. " " .. At(49, "power"),
      At(10, "metal") .. " " .. At(25, "metal") .. " " .. At(49, "metal"))
   Out(line)
   table.insert(summary_rows, line)
end
Out(string.format("%-11s %-8s %7s %7s %7s %7s", "all", "", Percent(Objective({ "power" })), Percent(Objective({ "metal" })),
   Percent(Objective({ "energy" })), Percent(Objective({ "fire_cost_per_damage" }))))
Out()

-- weapons v1 never had, next to a comparable one
Out("Weapons v1 never had (v2 only), next to a comparable weapon both have: power multiple / metal spent / rounds per burst")
Out(string.format("%-11s %-11s %-30s %-30s %-30s", "weapon", "compared", "level 10", "level 25", "level 49"))
for _, pair in ipairs(Comparisons) do
   local base, other = bases_by_name[pair[1]], bases_by_name[pair[2]]
   local function Cell(b, level)
      if not b or not b.weapon then return "n/a" end
      local v = Relative(V2(b, level - 1), V2(b, 0))
      return string.format("%sx %s %d", F(v.power), F(v.metal), v.rounds)
   end
   if base then
      Out(string.format("%-11s %-11s %-30s %-30s %-30s", pair[1], "", Cell(base, 10), Cell(base, 25), Cell(base, 49)))
      Out(string.format("%-11s %-11s %-30s %-30s %-30s", "", pair[2], Cell(other, 10), Cell(other, 25), Cell(other, 49)))
   end
end
Out()

-- problems loading base values
for _, base in ipairs(bases) do
   if base.error then Out("note: " .. base.name .. ": " .. base.error) end
   if base.weapon and not base.MetalCost then Out("note: " .. base.name .. ": no base build cost (DLC; add it to DlcBaseCosts)") end
   if base.weapon and not base.damage_field then Out("note: " .. base.name .. ": projectile has no damage; power not compared") end
end
Out()

-- details
for _, base in ipairs(shared) do
   local rows = Compare(base)
   Out("== " .. base.name .. " (base: projectile " .. tostring(base.weapon.Projectile) .. ", " .. tostring(base.damage_field) ..
      ", reload " .. tostring(base.weapon.ReloadTime) .. " s, rounds " .. tostring(base.weapon.RoundsEachBurst or 1) ..
      (base.weapon.IsBeam and ", beam " .. tostring(base.weapon.BeamDuration) .. " s" or "") ..
      ", cost " .. tostring(base.MetalCost) .. "/" .. tostring(base.EnergyCost) .. ")")
   Out(string.format("%3s | %6s %6s %5s | %7s %7s %5s | %7s %7s | %5s %5s %5s | %5s %5s | %5s %5s | %5s %5s | %5s %5s",
      "L", "pow v1", "v2", "dev", "metal1", "metal2", "dev", "enrgy1", "enrgy2", "fc/d1", "v2", "dev",
      "spd1", "v2", "spl1", "v2", "hp1", "v2", "acc1", "v2"))
   for _, row in ipairs(rows) do
      local a, b = row.v1, row.v2
      Out(string.format("%3d | %6s %6s %5s | %7s %7s %5s | %7s %7s | %5s %5s %5s | %5s %5s | %5s %5s | %5s %5s | %5s %5s",
         row.level, F(a.power), F(b.power), Deviation(b.power, a.power),
         F(a.metal), F(b.metal), Deviation(b.metal, a.metal), F(a.energy), F(b.energy),
         F(a.fire_cost_per_damage), F(b.fire_cost_per_damage), Deviation(b.fire_cost_per_damage, a.fire_cost_per_damage),
         F(a.fire_speed), F(b.fire_speed), F(a.splash_radius), F(b.splash_radius), F(a.hitpoints), F(b.hitpoints),
         F(a.spread), F(b.spread)))
   end
   Out()
end

os.execute('mkdir "..\\dump" 2>nul')
local file_name = "../dump/balance_" .. os.date("%Y-%m-%d") .. ".txt"
local file = assert(io.open(file_name, "w"))
file:write(table.concat(out, "\n"), "\n")
file:close()

for i = 1, #out do
   if out[i]:match("^== ") then break end
   print(out[i])
end
print("written to " .. file_name)
