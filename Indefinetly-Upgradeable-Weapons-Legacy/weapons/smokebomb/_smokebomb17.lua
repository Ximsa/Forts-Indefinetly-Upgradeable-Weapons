local tmp = path
path = "mods/dlc_smokebomb"
dofile("mods/dlc_smokebomb/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base17",States={Normal={Frames={{texture="mods/dlc_smokebomb/weapons/smokebomb/base.tga",colour={0.5,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base17"
NodeEffects = {}
EnergyFireCost = 925.0316163230801
MetalFireCost = 92.50316163230802
ReloadTime = 14.221874999999999
FireSpreadMultiplier = 0.04100000000000001
Projectile = "smokebomb17"
DestroyProjectile = "smoke17"
