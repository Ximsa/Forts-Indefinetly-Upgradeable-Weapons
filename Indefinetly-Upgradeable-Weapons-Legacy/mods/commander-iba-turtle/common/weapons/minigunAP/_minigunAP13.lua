local tmp = path
path = "mods/commander-iba-turtle"
dofile("mods/commander-iba-turtle/common/weapons/minigun2.lua")
path = tmp
Sprites = {}
Root.Sprite="minigun-base13"
NodeEffects = {}
MinFireSpeed = 14400.0
MaxFireSpeed = 14400.1
EnergyFireCost = 994.8483038426201
MetalFireCost = 62.30827768889834
ReloadTime = 8.984375
Projectile = "_minigunAP13"
