local tmp = path
path = "mods/commander-iba-turtle"
dofile("mods/commander-iba-turtle/common/weapons/minigun2.lua")
path = tmp
Sprites = {}
Root.Sprite="minigun-base3"
NodeEffects = {}
MinFireSpeed = 9900.0
MaxFireSpeed = 9900.1
EnergyFireCost = 576.2158203125
MetalFireCost = 34.97607421875
ReloadTime = 9.765625
Projectile = "_minigunAP3"
