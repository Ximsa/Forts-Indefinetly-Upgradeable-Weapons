local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base34",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/smokebomb/base.tga",colour={0.7071067811865476,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base34"
NodeEffects = {}
EnergyFireCost = 1783.0075898230903
MetalFireCost = 178.30075898230908
ReloadTime = 12.04375
FireSpreadMultiplier = 0.05800000000000001
Projectile = "smokebomb34"
DestroyProjectile = "smoke34"
