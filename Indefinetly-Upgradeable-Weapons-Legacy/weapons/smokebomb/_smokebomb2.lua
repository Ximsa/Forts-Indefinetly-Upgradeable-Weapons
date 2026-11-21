local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base2",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/smokebomb/base.tga",colour={0.0,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base2"
NodeEffects = {}
EnergyFireCost = 334.6875
MetalFireCost = 33.46875
ReloadTime = 16.143749999999997
FireSpreadMultiplier = 0.026000000000000002
Projectile = "smokebomb2"
DestroyProjectile = "smoke2"
