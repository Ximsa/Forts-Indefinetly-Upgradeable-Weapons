local tmp = path
path = "mods/commander-iba-turtle"
dofile("mods/commander-iba-turtle/common/weapons/minigun2.lua")
path = tmp
Sprites = {}
Root.Sprite="minigun-base41"
NodeEffects = {}
MinFireSpeed = 27000.0
MaxFireSpeed = 27000.1
EnergyFireCost = 2579.359267358889
MetalFireCost = 165.75981993500184
ReloadTime = 6.796875
Projectile = "_minigunAP41"
