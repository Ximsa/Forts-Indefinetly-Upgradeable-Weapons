local tmp = path
path = "mods/dlc_smokebomb"
dofile("mods/dlc_smokebomb/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base10",States={Normal={Frames={{texture="mods/dlc_smokebomb/weapons/smokebomb/base.tga",colour={0.0,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base10"
NodeEffects = {}
EnergyFireCost = 632.4275193487648
MetalFireCost = 63.24275193487649
ReloadTime = 15.118749999999999
FireSpreadMultiplier = 0.033999999999999996
Projectile = "smokebomb10"
DestroyProjectile = "smoke10"
