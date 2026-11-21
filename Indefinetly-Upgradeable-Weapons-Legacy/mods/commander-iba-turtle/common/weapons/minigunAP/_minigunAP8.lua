local tmp = path
path = "mods/commander-iba-turtle"
dofile("mods/commander-iba-turtle/common/weapons/minigun2.lua")
path = tmp
Sprites = {}
Root.Sprite="minigun-base8"
NodeEffects = {}
MinFireSpeed = 12150.0
MaxFireSpeed = 12150.1
EnergyFireCost = 777.4229275111838
MetalFireCost = 48.11273658957316
ReloadTime = 9.375
Projectile = "_minigunAP8"
