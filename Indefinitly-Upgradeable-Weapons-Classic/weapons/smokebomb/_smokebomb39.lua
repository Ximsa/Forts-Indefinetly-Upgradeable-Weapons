local tmp = path
path = "mods/dlc_smokebomb"
dofile("mods/dlc_smokebomb/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base39",States={Normal={Frames={{texture="mods/dlc_smokebomb/weapons/smokebomb/base.tga",colour={0.7071067811865476,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base39"
NodeEffects = {}
EnergyFireCost = 2081.48796921184
MetalFireCost = 208.14879692118407
ReloadTime = 11.403125
FireSpreadMultiplier = 0.063
Projectile = "smokebomb39"
DestroyProjectile = "smoke39"
