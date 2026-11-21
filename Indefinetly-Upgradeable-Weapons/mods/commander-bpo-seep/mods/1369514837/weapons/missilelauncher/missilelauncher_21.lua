CommanderOverlays = { { mod = "mods/commander-bpo-seep", file = "mods/commander-bpo-seep/weapons/missilelauncher.lua" } }
path = (string.gsub(path, "/mods/commander%-[%w%-]+$", "")) -- the mod root
dofile(path .. "/weapons/weapon_file_upgrade.lua")
