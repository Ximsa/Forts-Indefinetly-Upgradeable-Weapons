local tmp = path
path = "mods/dlc_smokebomb"
dofile("mods/dlc_smokebomb/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base9",States={Normal={Frames={{texture="mods/dlc_smokebomb/weapons/smokebomb/base.tga",colour={0.0,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base9"
NodeEffects = {}
EnergyFireCost = 593.1594036664761
MetalFireCost = 59.31594036664762
ReloadTime = 15.246875
FireSpreadMultiplier = 0.033
Projectile = "smokebomb9"
DestroyProjectile = "smoke9"
