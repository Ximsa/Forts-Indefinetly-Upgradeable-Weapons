local tmp = path
path = "mods/commander-iba-turtle"
dofile("mods/commander-iba-turtle/common/weapons/minigun2.lua")
path = tmp
Sprites = {}
Root.Sprite="minigun-base32"
NodeEffects = {}
MinFireSpeed = 22950.0
MaxFireSpeed = 22950.1
EnergyFireCost = 1993.3638459145175
MetalFireCost = 127.50061473326187
ReloadTime = 7.5
Projectile = "_minigunAP32"
