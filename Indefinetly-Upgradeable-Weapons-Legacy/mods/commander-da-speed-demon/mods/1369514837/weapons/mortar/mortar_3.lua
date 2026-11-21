CommanderOverlays = { { mod = "mods/commander-da-speed-demon", file = "mods/commander-da-speed-demon/weapons/mortar.lua" } }
path = (string.gsub(path, "/mods/commander%-[%w%-]+$", "")) -- the mod root
dofile(path .. "/weapons/weapon_file_upgrade.lua")
