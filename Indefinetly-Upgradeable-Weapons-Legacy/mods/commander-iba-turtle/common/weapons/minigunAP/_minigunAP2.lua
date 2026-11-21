local tmp = path
path = "mods/commander-iba-turtle"
dofile("mods/commander-iba-turtle/common/weapons/minigun2.lua")
path = tmp
Sprites = {}
Root.Sprite="minigun-base2"
NodeEffects = {}
MinFireSpeed = 9450.0
MaxFireSpeed = 9450.1
EnergyFireCost = 537.8125
MetalFireCost = 32.46875
ReloadTime = 9.84375
Projectile = "_minigunAP2"
