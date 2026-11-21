local tmp = path
path = "mods/dlc_smokebomb"
dofile("mods/dlc_smokebomb/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base56",States={Normal={Frames={{texture="mods/dlc_smokebomb/weapons/smokebomb/base.tga",colour={0.8660254037844386,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base56"
NodeEffects = {}
EnergyFireCost = 3288.2163992706073
MetalFireCost = 328.8216399270608
ReloadTime = 9.225
FireSpreadMultiplier = 0.08000000000000002
Projectile = "smokebomb56"
DestroyProjectile = "smoke56"
