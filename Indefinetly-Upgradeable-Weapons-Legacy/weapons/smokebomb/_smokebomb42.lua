local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base42",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/smokebomb/base.tga",colour={0.7071067811865476,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base42"
NodeEffects = {}
EnergyFireCost = 2272.0037595550593
MetalFireCost = 227.20037595550605
ReloadTime = 11.018749999999999
FireSpreadMultiplier = 0.066
Projectile = "smokebomb42"
DestroyProjectile = "smoke42"
