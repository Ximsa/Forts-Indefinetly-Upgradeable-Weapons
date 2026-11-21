-- Shared setup for the offline tools in lib/ (check_lists.lua, balance_report.lua), run with a stand-alone Lua
-- from lib/. Provides Lua 5.1 shims, stubs for the engine globals the list files use, and loaders for the game's
-- readable files. Usage: local env = dofile("offline_env.lua"); env.Init(game_data_or_nil)

local env = {}

env.game_data = "C:/Program Files (x86)/Steam/steamapps/common/Forts/data"
env.log_lines = {}
env.on_log = nil -- optional function(message), called for every Log line

-- Lua 5.1 shims for newer interpreters
math.log10 = math.log10 or function(x) return math.log(x, 10) end
unpack = unpack or table.unpack
table.getn = table.getn or function(t) return #t end

function env.FileExists(file_name)
   local file = io.open(file_name, "r")
   if file then file:close() return true end
   return false
end

local raw_dofile = dofile
env.raw_dofile = raw_dofile

-- the game resolves relative paths against its data folder
function env.Resolve(file_name)
   if not env.FileExists(file_name) and env.FileExists(env.game_data .. "/" .. file_name) then
      return env.game_data .. "/" .. file_name
   end
   return file_name
end

function env.Init(game_data)
   if game_data then env.game_data = game_data end

   -- engine stubs
   function Log(message)
      message = tostring(message)
      table.insert(env.log_lines, message)
      if env.on_log then env.on_log(message) end
   end
   function L(s) return s end
   FrameRate = 25 -- the engine's simulation rate, as the in-game dumps show it
   Weapon = {}

   function dofile(file_name) return raw_dofile(env.Resolve(file_name)) end
end

-- runs a file with `path` set; returns ok, error
function env.Run(file_name, mod_path)
   path = mod_path
   return pcall(dofile, file_name)
end

-- the base game's and Tons of Guns' weapon_list.lua and projectile_list.lua; DLC flags stay off.
-- on_error(message) is called for each file that fails.
function env.LoadBaseLists(on_error)
   local weapon_pack = env.game_data .. "/mods/weapon_pack"
   moonshot, dlc2Var_Active = nil, nil
   for _, run in ipairs({
      { env.game_data .. "/weapons/weapon_list.lua", env.game_data },
      { weapon_pack .. "/weapons/weapon_list.lua", weapon_pack },
      { env.game_data .. "/weapons/projectile_list.lua", env.game_data },
      { weapon_pack .. "/weapons/projectile_list.lua", weapon_pack },
   }) do
      local ok, err = env.Run(run[1], run[2])
      if not ok and on_error then on_error("Lua error in " .. run[1] .. ": " .. tostring(err)) end
   end
   return Weapons ~= nil and Projectiles ~= nil
end

-- runs one weapon file in its own environment (as the game gives every weapon file fresh globals) and
-- returns that environment. Reads fall back to the real globals. Records whether the file sets up a beam.
function env.LoadWeaponFile(file_name, mod_path)
   local globals = setmetatable({}, { __index = _G })
   globals.path = mod_path
   globals.GenerateBeamTable = function() globals.IsBeam = true end
   globals.dofile = function(name)
      local resolved = env.Resolve(name)
      if not env.FileExists(resolved) then return end
      local chunk = assert(loadfile(resolved, "t", globals))
      return chunk()
   end
   local chunk = assert(loadfile(env.Resolve(file_name), "t", globals))
   chunk()
   if rawget(globals, "BeamTable") then globals.IsBeam = true end
   return globals
end

-- the sections of data/mods/iuw2/dump/weapons.lua (in-game weapon-file dumps, including DLC weapons),
-- keyed by their header ("Buzzsaw [buzzsaw]"). Each value holds the section's top-level number, string and boolean
-- globals (the sections aren't valid Lua as a whole), plus IsBeam if it has a BeamTable.
function env.LoadWeaponDump()
   local file = assert(io.open(env.game_data .. "/mods/iuw2/dump/weapons.lua", "r"))
   local sections = {}
   local current = nil
   for raw_line in file:lines() do
      local line = raw_line:gsub("%c+$", "")
      local header = line:match("^%-%- =%*=%*=%*=%*=%* (.-) :: BEGIN SCRIPT DUMP")
      if header then
         current = {}
         if not sections[header] then sections[header] = current end
      elseif current then
         local name, value = line:match("^([%a_][%w_]*) = (.-)%s*$")
         if name then
            local number = tonumber(value)
            if number then current[name] = number
            elseif value == "true" or value == "false" then current[name] = (value == "true")
            elseif value:match('^"[^"]*"$') then current[name] = value:sub(2, -2)
            end
         end
         if line:match("^BeamTable =") then current.IsBeam = true end
      end
   end
   file:close()
   return sections
end

-- data/mods/iuw2/dump/projectiles.lua (in-game projectile dump, including DLC projectiles), keyed by SaveName.
-- Function fields (beam tables, dumped as bytecode) become a function that returns 1.
function env.LoadProjectileDump()
   local globals = setmetatable({}, { __index = _G })
   globals.Base64dec = function() return "" end
   globals.loadstring = function() return function() return 1 end end
   local chunk = assert(loadfile(env.game_data .. "/mods/iuw2/dump/projectiles.lua", "t", globals))
   chunk()
   local by_name = {}
   for _, projectile in pairs(rawget(globals, "Projectiles") or {}) do
      if projectile.SaveName then by_name[projectile.SaveName] = projectile end
   end
   return by_name
end

return env
