-- IUW probe (Buster overlay paths): temporary
local before = tostring(Projectile)
local tmp = path
path = "mods/commander-cf-buster"
local ok, err = pcall(dofile, "mods/commander-cf-buster/mods/dlc_smokebomb/weapons/smokebomb.lua")
path = tmp
Log("IUW probe [buster] mods/commander-cf-buster/mods/dlc_smokebomb/weapons/smokebomb.lua ok=" .. tostring(ok) .. " err=" .. tostring(err) .. " active=" .. tostring(active) .. " Projectile " .. before .. " -> " .. tostring(Projectile))
