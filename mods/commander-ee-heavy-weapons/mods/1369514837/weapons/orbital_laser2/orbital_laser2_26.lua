CommanderOverlays = { { mod = "mods/commander-ee-heavy-weapons", file = "mods/commander-ee-heavy-weapons/mods/dlc2/weapons/orbital_laser2.lua" } }
path = (string.gsub(path, "/mods/commander%-[%w%-]+$", "")) -- the mod root
dofile(path .. "/weapons/weapon_file_upgrade.lua")
