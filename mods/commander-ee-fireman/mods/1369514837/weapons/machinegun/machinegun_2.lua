CommanderOverlays = { { mod = "mods/commander-ee-fireman", file = "mods/commander-ee-fireman/weapons/machinegun.lua" } }
path = (string.gsub(path, "/mods/commander%-[%w%-]+$", "")) -- the mod root
dofile(path .. "/weapons/weapon_file_upgrade.lua")
