local tmp = path
path = "mods/commander-iba-turtle"
dofile("mods/commander-iba-turtle/common/weapons/minigun2.lua")
path = tmp
Sprites = {}
Root.Sprite="minigun-base61"
NodeEffects = {}
MinFireSpeed = 36000.0
MaxFireSpeed = 36000.1
EnergyFireCost = 4215.053093523644
MetalFireCost = 272.5530532135271
ReloadTime = 5.234375
Projectile = "_minigunAP61"
