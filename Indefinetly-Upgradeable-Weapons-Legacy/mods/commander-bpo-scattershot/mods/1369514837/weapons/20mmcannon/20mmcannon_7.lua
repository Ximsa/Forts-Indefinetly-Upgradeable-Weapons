CommanderOverlays = { { mod = "mods/commander-bpo-scattershot", file = "mods/commander-bpo-scattershot/mods/weapon_pack/weapons/20mmcannon.lua" } }
path = (string.gsub(path, "/mods/commander%-[%w%-]+$", "")) -- the mod root
dofile(path .. "/weapons/weapon_file_upgrade.lua")
