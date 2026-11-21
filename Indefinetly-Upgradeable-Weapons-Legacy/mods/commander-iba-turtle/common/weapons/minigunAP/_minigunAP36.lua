local tmp = path
path = "mods/commander-iba-turtle"
dofile("mods/commander-iba-turtle/common/weapons/minigun2.lua")
path = tmp
Sprites = {}
Root.Sprite="minigun-base36"
NodeEffects = {}
MinFireSpeed = 24750.0
MaxFireSpeed = 24750.1
EnergyFireCost = 2243.7414993034504
MetalFireCost = 143.84758549171286
ReloadTime = 7.1875
Projectile = "_minigunAP36"
