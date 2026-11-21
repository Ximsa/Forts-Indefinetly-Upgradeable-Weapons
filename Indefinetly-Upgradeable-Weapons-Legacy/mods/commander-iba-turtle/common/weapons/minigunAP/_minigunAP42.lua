local tmp = path
path = "mods/commander-iba-turtle"
dofile("mods/commander-iba-turtle/common/weapons/minigun2.lua")
path = tmp
Sprites = {}
Root.Sprite="minigun-base42"
NodeEffects = {}
MinFireSpeed = 27450.0
MaxFireSpeed = 27450.1
EnergyFireCost = 2649.661755911372
MetalFireCost = 170.34981712148624
ReloadTime = 6.71875
Projectile = "_minigunAP42"
