local tmp = path
path = "mods/commander-iba-turtle"
dofile("mods/commander-iba-turtle/common/weapons/minigun2.lua")
path = tmp
Sprites = {}
Root.Sprite="minigun-base16"
NodeEffects = {}
MinFireSpeed = 15750.0
MaxFireSpeed = 15750.1
EnergyFireCost = 1133.6278360091383
MetalFireCost = 71.3690901196049
ReloadTime = 8.75
Projectile = "_minigunAP16"
