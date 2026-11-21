CommanderOverlays = { { mod = "mods/commander-ee-heavy-weapons", file = "mods/commander-ee-heavy-weapons/mods/weapon_pack/weapons/20mmcannon.lua" } }
path = (string.gsub(path, "/mods/commander%-[%w%-]+$", "")) -- the mod root
dofile(path .. "/weapons/weapon_file_upgrade.lua")
