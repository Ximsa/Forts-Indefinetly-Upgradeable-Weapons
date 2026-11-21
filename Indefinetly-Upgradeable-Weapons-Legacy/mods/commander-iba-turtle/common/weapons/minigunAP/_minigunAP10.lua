local tmp = path
path = "mods/commander-iba-turtle"
dofile("mods/commander-iba-turtle/common/weapons/minigun2.lua")
path = tmp
Sprites = {}
Root.Sprite="minigun-base10"
NodeEffects = {}
MinFireSpeed = 13050.0
MaxFireSpeed = 13050.1
EnergyFireCost = 862.3759445153203
MetalFireCost = 53.65925588157876
ReloadTime = 9.21875
Projectile = "_minigunAP10"
