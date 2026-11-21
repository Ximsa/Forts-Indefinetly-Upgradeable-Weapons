local tmp = path
path = "mods/commander-iba-turtle"
dofile("mods/commander-iba-turtle/common/weapons/minigun2.lua")
path = tmp
Sprites = {}
Root.Sprite="minigun-base14"
NodeEffects = {}
MinFireSpeed = 14850.0
MaxFireSpeed = 14850.1
EnergyFireCost = 1040.3928085901612
MetalFireCost = 65.28184452778738
ReloadTime = 8.90625
Projectile = "_minigunAP14"
