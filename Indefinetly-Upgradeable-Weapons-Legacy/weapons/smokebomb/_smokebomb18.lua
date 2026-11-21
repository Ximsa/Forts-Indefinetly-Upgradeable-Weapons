local tmp = path
path = "mods/dlc_smokebomb"
dofile("mods/dlc_smokebomb/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base18",States={Normal={Frames={{texture="mods/dlc_smokebomb/weapons/smokebomb/base.tga",colour={0.5,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base18"
NodeEffects = {}
EnergyFireCost = 969.4852353281283
MetalFireCost = 96.94852353281283
ReloadTime = 14.093749999999998
FireSpreadMultiplier = 0.04200000000000001
Projectile = "smokebomb18"
DestroyProjectile = "smoke18"
