local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base30",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/smokebomb/base.tga",colour={0.5,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base30"
NodeEffects = {}
EnergyFireCost = 1560.3351806506153
MetalFireCost = 156.03351806506157
ReloadTime = 12.556249999999999
FireSpreadMultiplier = 0.054000000000000006
Projectile = "smokebomb30"
DestroyProjectile = "smoke30"
