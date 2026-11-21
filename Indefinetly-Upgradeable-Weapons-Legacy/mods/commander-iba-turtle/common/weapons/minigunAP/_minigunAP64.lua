local tmp = path
path = "mods/commander-iba-turtle"
dofile("mods/commander-iba-turtle/common/weapons/minigun2.lua")
path = tmp
Sprites = {}
Root.Sprite="minigun-base64"
NodeEffects = {}
MinFireSpeed = 37350.0
MaxFireSpeed = 37350.1
EnergyFireCost = 4507.150557742809
MetalFireCost = 291.62387938981965
ReloadTime = 5.0
Projectile = "_minigunAP64"
