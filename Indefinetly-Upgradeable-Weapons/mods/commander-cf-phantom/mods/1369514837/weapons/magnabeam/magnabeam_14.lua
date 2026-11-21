CommanderOverlays = { { mod = "mods/commander-cf-phantom", file = "mods/commander-cf-phantom/mods/dlc1_weapons/weapons/magnabeam.lua" } }
path = (string.gsub(path, "/mods/commander%-[%w%-]+$", "")) -- the mod root
dofile(path .. "/weapons/weapon_file_upgrade.lua")
