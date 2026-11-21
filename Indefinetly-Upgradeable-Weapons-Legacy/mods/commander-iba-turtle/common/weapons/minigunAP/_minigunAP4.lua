local tmp = path
path = "mods/commander-iba-turtle"
dofile("mods/commander-iba-turtle/common/weapons/minigun2.lua")
path = tmp
Sprites = {}
Root.Sprite="minigun-base4"
NodeEffects = {}
MinFireSpeed = 10350.0
MaxFireSpeed = 10350.1
EnergyFireCost = 615.2191925048828
MetalFireCost = 37.52257537841797
ReloadTime = 9.6875
Projectile = "_minigunAP4"
