local tmp = path
path = "mods/dlc_smokebomb"
dofile("mods/dlc_smokebomb/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base24",States={Normal={Frames={{texture="mods/dlc_smokebomb/weapons/smokebomb/base.tga",colour={0.5,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base24"
NodeEffects = {}
EnergyFireCost = 1251.1791369273049
MetalFireCost = 125.11791369273051
ReloadTime = 13.325
FireSpreadMultiplier = 0.048
Projectile = "smokebomb24"
DestroyProjectile = "smoke24"
