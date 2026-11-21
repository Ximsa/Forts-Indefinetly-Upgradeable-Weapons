local tmp = path
path = "mods/commander-iba-turtle"
dofile("mods/commander-iba-turtle/common/weapons/minigun2.lua")
path = tmp
Sprites = {}
Root.Sprite="minigun-base63"
NodeEffects = {}
MinFireSpeed = 36900.0
MaxFireSpeed = 36900.1
EnergyFireCost = 4408.271318392919
MetalFireCost = 285.16812739920704
ReloadTime = 5.078125
Projectile = "_minigunAP63"
