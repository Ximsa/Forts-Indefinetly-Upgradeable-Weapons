local tmp = path
path = "mods/commander-iba-turtle"
dofile("mods/commander-iba-turtle/common/weapons/minigun2.lua")
path = tmp
Sprites = {}
Root.Sprite="minigun-base62"
NodeEffects = {}
MinFireSpeed = 36450.0
MaxFireSpeed = 36450.1
EnergyFireCost = 4310.913298109951
MetalFireCost = 278.81169466998847
ReloadTime = 5.15625
Projectile = "_minigunAP62"
