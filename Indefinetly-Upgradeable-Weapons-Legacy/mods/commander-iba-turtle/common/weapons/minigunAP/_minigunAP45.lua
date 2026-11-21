local tmp = path
path = "mods/commander-iba-turtle"
dofile("mods/commander-iba-turtle/common/weapons/minigun2.lua")
path = tmp
Sprites = {}
Root.Sprite="minigun-base45"
NodeEffects = {}
MinFireSpeed = 28800.0
MaxFireSpeed = 28800.1
EnergyFireCost = 2867.229002827303
MetalFireCost = 184.5546208457495
ReloadTime = 6.484375
Projectile = "_minigunAP45"
