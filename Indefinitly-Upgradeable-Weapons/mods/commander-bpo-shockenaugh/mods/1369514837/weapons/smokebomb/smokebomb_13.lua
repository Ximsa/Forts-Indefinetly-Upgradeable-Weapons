CommanderOverlays = { { mod = "mods/commander-bpo-shockenaugh", file = "mods/commander-bpo-shockenaugh/mods/dlc_smokebomb/weapons/smokebomb.lua" } }
path = (string.gsub(path, "/mods/commander%-[%w%-]+$", "")) -- the mod root
dofile(path .. "/weapons/weapon_file_upgrade.lua")
