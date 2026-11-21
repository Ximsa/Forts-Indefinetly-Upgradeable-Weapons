local tmp = path
path = "mods/commander-iba-turtle"
dofile("mods/commander-iba-turtle/common/weapons/minigun2.lua")
path = tmp
Sprites = {}
Root.Sprite="minigun-base12"
NodeEffects = {}
MinFireSpeed = 13950.0
MaxFireSpeed = 13950.1
EnergyFireCost = 950.0044837835029
MetalFireCost = 59.38045803214606
ReloadTime = 9.0625
Projectile = "_minigunAP12"
