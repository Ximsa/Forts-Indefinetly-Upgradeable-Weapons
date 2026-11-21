local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base20",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/smokebomb/base.tga",colour={0.5,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base20"
NodeEffects = {}
EnergyFireCost = 1060.4870896634136
MetalFireCost = 106.04870896634137
ReloadTime = 13.837499999999999
FireSpreadMultiplier = 0.044000000000000004
Projectile = "smokebomb20"
DestroyProjectile = "smoke20"
