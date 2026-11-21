CommanderOverlays = { { mod = "mods/commander-ee-marksman", file = "mods/commander-ee-marksman/weapons/mortar-incendiary.lua" } }
path = (string.gsub(path, "/mods/commander%-[%w%-]+$", "")) -- the mod root
dofile(path .. "/weapons/weapon_file_upgrade.lua")
