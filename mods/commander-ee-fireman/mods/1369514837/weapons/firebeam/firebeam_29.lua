CommanderOverlays = { { mod = "mods/commander-ee-fireman", file = "mods/commander-ee-fireman/mods/weapon_pack/weapons/firebeam.lua" } }
path = (string.gsub(path, "/mods/commander%-[%w%-]+$", "")) -- the mod root
dofile(path .. "/weapons/weapon_file_upgrade.lua")
