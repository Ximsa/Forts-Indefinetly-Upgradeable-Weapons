CommanderOverlays = { { mod = "mods/commander-bpo-seep", file = "mods/commander-bpo-seep/mods/weapon_pack/weapons/rocketemp.lua" } }
path = (string.gsub(path, "/mods/commander%-[%w%-]+$", "")) -- the mod root
dofile(path .. "/weapons/weapon_file_upgrade.lua")
