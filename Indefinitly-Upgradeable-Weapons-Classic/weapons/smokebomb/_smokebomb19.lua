local tmp = path
path = "mods/dlc_smokebomb"
dofile("mods/dlc_smokebomb/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base19",States={Normal={Frames={{texture="mods/dlc_smokebomb/weapons/smokebomb/base.tga",colour={0.5,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base19"
NodeEffects = {}
EnergyFireCost = 1014.6334421301303
MetalFireCost = 101.46334421301303
ReloadTime = 13.965625
FireSpreadMultiplier = 0.043000000000000003
Projectile = "smokebomb19"
DestroyProjectile = "smoke19"
