local tmp = path
path = "mods/commander-iba-turtle"
dofile("mods/commander-iba-turtle/common/weapons/minigun2.lua")
path = tmp
Sprites = {}
Root.Sprite="minigun-base48"
NodeEffects = {}
MinFireSpeed = 30150.0
MaxFireSpeed = 30150.1
EnergyFireCost = 3095.1548954065247
MetalFireCost = 199.43573284059127
ReloadTime = 6.25
Projectile = "_minigunAP48"
