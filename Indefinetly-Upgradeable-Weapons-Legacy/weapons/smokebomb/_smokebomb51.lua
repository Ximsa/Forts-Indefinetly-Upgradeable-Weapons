local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base51",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/smokebomb/base.tga",colour={0.8660254037844386,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base51"
NodeEffects = {}
EnergyFireCost = 2899.7233140098274
MetalFireCost = 289.97233140098285
ReloadTime = 9.865624999999998
FireSpreadMultiplier = 0.07500000000000001
Projectile = "smokebomb51"
DestroyProjectile = "smoke51"
