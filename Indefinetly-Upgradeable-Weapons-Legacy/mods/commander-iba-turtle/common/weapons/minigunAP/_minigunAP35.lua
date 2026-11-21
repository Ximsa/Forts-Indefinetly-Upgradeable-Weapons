local tmp = path
path = "mods/commander-iba-turtle"
dofile("mods/commander-iba-turtle/common/weapons/minigun2.lua")
path = tmp
Sprites = {}
Root.Sprite="minigun-base35"
NodeEffects = {}
MinFireSpeed = 24300.0
MaxFireSpeed = 24300.1
EnergyFireCost = 2179.683937775705
MetalFireCost = 139.6653149456865
ReloadTime = 7.265625
Projectile = "_minigunAP35"
