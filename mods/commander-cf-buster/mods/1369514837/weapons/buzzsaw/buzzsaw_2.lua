-- IUW probe (Buster overlay paths): temporary
local before = tostring(Projectile)
local tmp = path
path = "mods/commander-cf-buster"
local ok, err = pcall(dofile, "mods/commander-cf-buster/mods/dlc1_weapons/weapons/buzzsaw.lua")
path = tmp
Log("IUW probe [buster] mods/commander-cf-buster/mods/dlc1_weapons/weapons/buzzsaw.lua ok=" .. tostring(ok) .. " err=" .. tostring(err) .. " active=" .. tostring(active) .. " Projectile " .. before .. " -> " .. tostring(Projectile))
