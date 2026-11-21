local tmp = path
path = "mods/dlc_smokebomb"
dofile("mods/dlc_smokebomb/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base4",States={Normal={Frames={{texture="mods/dlc_smokebomb/weapons/smokebomb/base.tga",colour={0.0,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base4"
NodeEffects = {}
EnergyFireCost = 405.6969451904297
MetalFireCost = 40.56969451904297
ReloadTime = 15.8875
FireSpreadMultiplier = 0.028000000000000004
Projectile = "smokebomb4"
DestroyProjectile = "smoke4"
