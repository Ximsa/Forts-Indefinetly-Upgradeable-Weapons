local tmp = path
path = "mods/commander-iba-turtle"
dofile("mods/commander-iba-turtle/common/weapons/minigun2.lua")
path = tmp
Sprites = {}
Root.Sprite="minigun-base40"
NodeEffects = {}
MinFireSpeed = 26550.0
MaxFireSpeed = 26550.1
EnergyFireCost = 2510.138355553368
MetalFireCost = 161.24043808984797
ReloadTime = 6.875
Projectile = "_minigunAP40"
