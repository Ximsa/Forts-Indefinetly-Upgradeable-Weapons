local tmp = path
path = "mods/commander-iba-turtle"
dofile("mods/commander-iba-turtle/common/weapons/minigun2.lua")
path = tmp
Sprites = {}
Root.Sprite="minigun-base20"
NodeEffects = {}
MinFireSpeed = 17550.0
MaxFireSpeed = 17550.1
EnergyFireCost = 1328.999440083541
MetalFireCost = 84.12475683190061
ReloadTime = 8.4375
Projectile = "_minigunAP20"
