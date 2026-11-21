local tmp = path
path = "mods/commander-iba-turtle"
dofile("mods/commander-iba-turtle/common/weapons/minigun2.lua")
path = tmp
Sprites = {}
Root.Sprite="minigun-base21"
NodeEffects = {}
MinFireSpeed = 18000.0
MaxFireSpeed = 18000.1
EnergyFireCost = 1379.7650563348463
MetalFireCost = 87.43920615739906
ReloadTime = 8.359375
Projectile = "_minigunAP21"
