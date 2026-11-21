CommanderOverlays = { { mod = "mods/commander-ee-marksman", file = "mods/commander-ee-marksman/mods/weapon_pack/weapons/flak.lua" } }
path = (string.gsub(path, "/mods/commander%-[%w%-]+$", "")) -- the mod root
dofile(path .. "/weapons/weapon_file_upgrade.lua")
