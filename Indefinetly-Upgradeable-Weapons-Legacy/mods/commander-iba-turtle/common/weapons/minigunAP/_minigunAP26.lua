local tmp = path
path = "mods/commander-iba-turtle"
dofile("mods/commander-iba-turtle/common/weapons/minigun2.lua")
path = tmp
Sprites = {}
Root.Sprite="minigun-base26"
NodeEffects = {}
MinFireSpeed = 20250.0
MaxFireSpeed = 20250.1
EnergyFireCost = 1645.7421309202157
MetalFireCost = 104.8046515228901
ReloadTime = 7.96875
Projectile = "_minigunAP26"
