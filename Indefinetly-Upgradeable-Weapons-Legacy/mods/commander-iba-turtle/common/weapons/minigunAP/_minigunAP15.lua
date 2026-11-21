local tmp = path
path = "mods/commander-iba-turtle"
dofile("mods/commander-iba-turtle/common/weapons/minigun2.lua")
path = tmp
Sprites = {}
Root.Sprite="minigun-base15"
NodeEffects = {}
MinFireSpeed = 15300.0
MaxFireSpeed = 15300.1
EnergyFireCost = 1086.6489462243824
MetalFireCost = 68.30187334853406
ReloadTime = 8.828125
Projectile = "_minigunAP15"
