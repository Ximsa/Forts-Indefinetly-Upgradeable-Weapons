local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base21",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/smokebomb/base.tga",colour={0.5,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base21"
NodeEffects = {}
EnergyFireCost = 1107.0572004394044
MetalFireCost = 110.70572004394045
ReloadTime = 13.709374999999998
FireSpreadMultiplier = 0.045000000000000005
Projectile = "smokebomb21"
DestroyProjectile = "smoke21"
