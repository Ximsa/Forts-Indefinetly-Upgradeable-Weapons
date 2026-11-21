local tmp = path
path = "mods/dlc_smokebomb"
dofile("mods/dlc_smokebomb/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base64",States={Normal={Frames={{texture="mods/dlc_smokebomb/weapons/smokebomb/base.tga",colour={0.0,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base64"
NodeEffects = {}
EnergyFireCost = 3975.9810901607575
MetalFireCost = 397.59810901607585
ReloadTime = 8.2
FireSpreadMultiplier = 0.08800000000000001
Projectile = "smokebomb64"
DestroyProjectile = "smoke64"
