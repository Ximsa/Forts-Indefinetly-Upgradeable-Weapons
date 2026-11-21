local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base36",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/smokebomb/base.tga",colour={0.7071067811865476,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base36"
NodeEffects = {}
EnergyFireCost = 1899.630631592421
MetalFireCost = 189.96306315924213
ReloadTime = 11.787499999999998
FireSpreadMultiplier = 0.06000000000000001
Projectile = "smokebomb36"
DestroyProjectile = "smoke36"
