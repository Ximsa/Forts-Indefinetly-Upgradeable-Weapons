local tmp = path
path = "mods/commander-iba-turtle"
dofile("mods/commander-iba-turtle/common/weapons/minigun2.lua")
path = tmp
Sprites = {}
Root.Sprite="minigun-base50"
NodeEffects = {}
MinFireSpeed = 31050.0
MaxFireSpeed = 31050.1
EnergyFireCost = 3253.1028889386153
MetalFireCost = 209.74803985632278
ReloadTime = 6.09375
Projectile = "_minigunAP50"
