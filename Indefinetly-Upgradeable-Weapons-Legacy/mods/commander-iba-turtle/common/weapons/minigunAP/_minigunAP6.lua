local tmp = path
path = "mods/commander-iba-turtle"
dofile("mods/commander-iba-turtle/common/weapons/minigun2.lua")
path = tmp
Sprites = {}
Root.Sprite="minigun-base6"
NodeEffects = {}
MinFireSpeed = 11250.0
MaxFireSpeed = 11250.1
EnergyFireCost = 695.0637422688305
MetalFireCost = 42.73556664399803
ReloadTime = 9.53125
Projectile = "_minigunAP6"
