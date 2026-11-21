local tmp = path
path = "mods/dlc_smokebomb"
dofile("mods/dlc_smokebomb/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base28",States={Normal={Frames={{texture="mods/dlc_smokebomb/weapons/smokebomb/base.tga",colour={0.5,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base28"
NodeEffects = {}
EnergyFireCost = 1454.0716922946556
MetalFireCost = 145.4071692294656
ReloadTime = 12.8125
FireSpreadMultiplier = 0.052000000000000005
Projectile = "smokebomb28"
DestroyProjectile = "smoke28"
