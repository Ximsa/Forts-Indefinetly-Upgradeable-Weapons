local tmp = path
path = "mods/dlc_smokebomb"
dofile("mods/dlc_smokebomb/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base38",States={Normal={Frames={{texture="mods/dlc_smokebomb/weapons/smokebomb/base.tga",colour={0.7071067811865476,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base38"
NodeEffects = {}
EnergyFireCost = 2019.9266158393502
MetalFireCost = 201.99266158393507
ReloadTime = 11.53125
FireSpreadMultiplier = 0.062
Projectile = "smokebomb38"
DestroyProjectile = "smoke38"
