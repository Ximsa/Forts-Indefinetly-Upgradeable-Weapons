-- IUW probe (Buster overlay paths): temporary
local before = tostring(Projectile)
local tmp = path
path = "mods/commander-cf-buster"
local ok, err = pcall(dofile, "mods/commander-cf-buster/weapons/missilelauncher_inverted.lua")
path = tmp
Log("IUW probe [buster] mods/commander-cf-buster/weapons/missilelauncher_inverted.lua ok=" .. tostring(ok) .. " err=" .. tostring(err) .. " active=" .. tostring(active) .. " Projectile " .. before .. " -> " .. tostring(Projectile))
