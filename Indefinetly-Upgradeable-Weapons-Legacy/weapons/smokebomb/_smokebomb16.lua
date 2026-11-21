local tmp = path
path = "mods/dlc_smokebomb"
dofile("mods/dlc_smokebomb/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base16",States={Normal={Frames={{texture="mods/dlc_smokebomb/weapons/smokebomb/base.tga",colour={0.5,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base16"
NodeEffects = {}
EnergyFireCost = 881.2618991488789
MetalFireCost = 88.1261899148879
ReloadTime = 14.349999999999998
FireSpreadMultiplier = 0.04000000000000001
Projectile = "smokebomb16"
DestroyProjectile = "smoke16"
