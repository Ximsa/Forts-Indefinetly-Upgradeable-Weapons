local tmp = path
path = "mods/commander-iba-turtle"
dofile("mods/commander-iba-turtle/common/weapons/minigun2.lua")
path = tmp
Sprites = {}
Root.Sprite="minigun-base55"
NodeEffects = {}
MinFireSpeed = 33300.0
MaxFireSpeed = 33300.1
EnergyFireCost = 3670.0800825989722
MetalFireCost = 236.9721706820816
ReloadTime = 5.703125
Projectile = "_minigunAP55"
