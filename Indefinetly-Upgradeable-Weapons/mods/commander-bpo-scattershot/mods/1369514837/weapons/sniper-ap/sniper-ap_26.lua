CommanderOverlays = { { mod = "mods/commander-bpo-scattershot", file = "mods/commander-bpo-scattershot/weapons/sniper-ap.lua" } }
path = (string.gsub(path, "/mods/commander%-[%w%-]+$", "")) -- the mod root
dofile(path .. "/weapons/weapon_file_upgrade.lua")
