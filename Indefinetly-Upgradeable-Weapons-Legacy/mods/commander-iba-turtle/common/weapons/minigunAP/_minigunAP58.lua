local tmp = path
path = "mods/commander-iba-turtle"
dofile("mods/commander-iba-turtle/common/weapons/minigun2.lua")
path = tmp
Sprites = {}
Root.Sprite="minigun-base58"
NodeEffects = {}
MinFireSpeed = 34650.0
MaxFireSpeed = 34650.1
EnergyFireCost = 3936.230707869502
MetalFireCost = 254.34894704271952
ReloadTime = 5.46875
Projectile = "_minigunAP58"
