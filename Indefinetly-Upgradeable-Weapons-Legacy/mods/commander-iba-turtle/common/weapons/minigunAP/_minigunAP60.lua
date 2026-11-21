local tmp = path
path = "mods/commander-iba-turtle"
dofile("mods/commander-iba-turtle/common/weapons/minigun2.lua")
path = tmp
Sprites = {}
Root.Sprite="minigun-base60"
NodeEffects = {}
MinFireSpeed = 35550.0
MaxFireSpeed = 35550.1
EnergyFireCost = 4120.667661315588
MetalFireCost = 266.3906985487036
ReloadTime = 5.3125
Projectile = "_minigunAP60"
