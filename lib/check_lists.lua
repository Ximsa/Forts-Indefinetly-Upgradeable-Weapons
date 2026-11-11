-- Offline check of the mod's lists, run with a stand-alone Lua from lib/:
--   cd lib && lua55 check_lists.lua ["<Forts data folder>"]
-- Loads the game's readable base lists (base game and Tons of Guns), then this mod's weapon_list.lua,
-- projectile_list.lua and strings.lua with engine stubs, and reports problems. Exits with 1 if it finds any.
-- It can't run the per-weapon files or the DLC lists (they are packed), so DLC registry entries are left out.

local game_data = arg and arg[1] or "C:/Program Files (x86)/Steam/steamapps/common/Forts/data"
local weapon_pack = game_data .. "/mods/weapon_pack"

-- Lua 5.1 shims for newer interpreters
math.log10 = math.log10 or function(x) return math.log(x, 10) end
unpack = unpack or table.unpack
table.getn = table.getn or function(t) return #t end

local problems = {}
local function Problem(message) table.insert(problems, message) end

local function FileExists(file_name)
   local file = io.open(file_name, "r")
   if file then file:close() return true end
   return false
end

-- engine stubs
local log_lines = {}
function Log(message)
   message = tostring(message)
   table.insert(log_lines, message)
   if message:find("Error") or message:find("Could not find") or message:find("did not load") then
      Problem("Log: " .. message)
   end
end

function L(s) return s end

FrameRate = 25 -- the engine's simulation rate, as the in-game dumps show it

Weapon = {}

-- the game resolves dofile paths relative to its data folder
local raw_dofile = dofile
function dofile(file_name)
   if not FileExists(file_name) and FileExists(game_data .. "/" .. file_name) then
      file_name = game_data .. "/" .. file_name
   end
   return raw_dofile(file_name)
end

local function Run(file_name, mod_path)
   path = mod_path
   local ok, err = pcall(dofile, file_name)
   if not ok then Problem("Lua error in " .. file_name .. ": " .. tostring(err)) end
end

-- base lists; DLC flags stay off because the DLC lists can't be loaded
moonshot, dlc2Var_Active = nil, nil
Run(game_data .. "/weapons/weapon_list.lua", game_data)
Run(weapon_pack .. "/weapons/weapon_list.lua", weapon_pack)
Run(game_data .. "/weapons/projectile_list.lua", game_data)
Run(weapon_pack .. "/weapons/projectile_list.lua", weapon_pack)

if not Weapons or not Projectiles then
   Problem("the game's base lists did not load from " .. game_data)
else
   -- this mod's lists, as the game runs them after the base lists
   Run("../weapons/weapon_list.lua", "..")
   Run("../weapons/projectile_list.lua", "..")
   Run("../weapons/strings.lua", "..")
end

-- the registry as the lists saw it (without DLC entries)
path = ".."
moonshot, dlc2Var_Active = nil, nil
raw_dofile("../lib/scalings.lua")

local weapons_by_name = {}
for _, weapon in ipairs(Weapons or {}) do weapons_by_name[weapon.SaveName] = weapon end
local projectiles_by_name = {}
for _, projectile in ipairs(Projectiles or {}) do projectiles_by_name[projectile.SaveName] = projectile end
local registered = {}
for _, weapon_upgrade in ipairs(WeaponUpgrades) do registered[weapon_upgrade.weapon_savename] = weapon_upgrade end

local function CheckLink(weapon, kind, target)
   if not weapons_by_name[target] then
      Problem(weapon.SaveName .. ": " .. kind .. " " .. target .. " does not exist")
   elseif weapon.OriginalWeapon and registered[target] then
      Problem(weapon.SaveName .. ": " .. kind .. " " .. target .. " leads from a level weapon to a base weapon that has levels")
   end
end

-- every weapon's links; level weapons' stubs and name strings
local level_weapon_count = 0
for _, weapon in ipairs(Weapons or {}) do
   for _, upgrade in pairs(weapon.Upgrades or {}) do CheckLink(weapon, "upgrade", upgrade.SaveName) end
   if weapon.InvertedType then CheckLink(weapon, "inverted type", weapon.InvertedType) end
   for _, group in ipairs(weapon.CompatibleGroupTypes or {}) do
      if not weapons_by_name[group] then Problem(weapon.SaveName .. ": compatible group type " .. group .. " does not exist") end
   end
   if weapon.OriginalWeapon then
      level_weapon_count = level_weapon_count + 1
      if not FileExists(weapon.FileName) then Problem(weapon.SaveName .. ": stub file " .. weapon.FileName .. " is missing") end
      if not Weapon[weapon.SaveName] then Problem(weapon.SaveName .. ": no name string") end
   end
end

-- every registered weapon has all its levels, and every registered projectile exists at every level
local function CheckProjectileTree(owner, tree)
   for projectile_savename, children in pairs(tree) do
      if not projectiles_by_name[projectile_savename] then
         Problem(owner .. ": projectile " .. projectile_savename .. " does not exist")
      else
         for level = FirstLevel, LastLevel do
            if not projectiles_by_name[projectile_savename .. "_" .. level] then
               Problem(owner .. ": level projectile " .. projectile_savename .. "_" .. level .. " is missing")
            end
         end
      end
      CheckProjectileTree(owner, children)
   end
end

for _, weapon_upgrade in ipairs(WeaponUpgrades) do
   local name = weapon_upgrade.weapon_savename
   if not weapons_by_name[name] then
      Problem("registry: weapon " .. name .. " does not exist")
   else
      for level = FirstLevel, LastLevel do
         if not weapons_by_name[name .. "_" .. level] then Problem("registry: level weapon " .. name .. "_" .. level .. " is missing") end
      end
   end
   if type(weapon_upgrade.upgrade_time) ~= "number" then Problem("registry: " .. name .. " has no upgrade_time") end
   CheckProjectileTree(name, weapon_upgrade.projectile or {})
   for ammo_savename, _ in pairs(weapon_upgrade.ammunition or {}) do
      if not (weapon_upgrade.projectile or {})[ammo_savename] then
         Problem("registry: " .. name .. " ammunition " .. ammo_savename .. " is not in its projectile tree")
      end
   end
end

print(string.format("checked %d weapons (%d level weapons) and %d projectiles; DLC entries skipped",
   #(Weapons or {}), level_weapon_count, #(Projectiles or {})))
if #problems == 0 then
   print("OK")
else
   for _, message in ipairs(problems) do print(message) end
   print(#problems .. " problem(s)")
   os.exit(1)
end
