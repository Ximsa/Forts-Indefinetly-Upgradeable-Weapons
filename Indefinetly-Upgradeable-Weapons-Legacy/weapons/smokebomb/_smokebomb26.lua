local tmp = path
path = "mods/dlc_smokebomb"
dofile("mods/dlc_smokebomb/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base26",States={Normal={Frames={{texture="mods/dlc_smokebomb/weapons/smokebomb/base.tga",colour={0.5,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base26"
NodeEffects = {}
EnergyFireCost = 1351.0526986127595
MetalFireCost = 135.10526986127599
ReloadTime = 13.068749999999998
FireSpreadMultiplier = 0.05
Projectile = "smokebomb26"
DestroyProjectile = "smoke26"
