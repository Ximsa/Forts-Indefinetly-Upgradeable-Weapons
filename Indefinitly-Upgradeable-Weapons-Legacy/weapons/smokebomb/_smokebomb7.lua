local tmp = path
path = "mods/dlc_smokebomb"
dofile("mods/dlc_smokebomb/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base7",States={Normal={Frames={{texture="mods/dlc_smokebomb/weapons/smokebomb/base.tga",colour={0.0,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base7"
NodeEffects = {}
EnergyFireCost = 516.4262526432867
MetalFireCost = 51.64262526432867
ReloadTime = 15.503124999999999
FireSpreadMultiplier = 0.031
Projectile = "smokebomb7"
DestroyProjectile = "smoke7"
