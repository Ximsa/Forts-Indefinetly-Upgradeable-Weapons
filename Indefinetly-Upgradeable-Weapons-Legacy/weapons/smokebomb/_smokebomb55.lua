local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base55",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/smokebomb/base.tga",colour={0.8660254037844386,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base55"
NodeEffects = {}
EnergyFireCost = 3208.089993127983
MetalFireCost = 320.80899931279833
ReloadTime = 9.353124999999999
FireSpreadMultiplier = 0.07900000000000001
Projectile = "smokebomb55"
DestroyProjectile = "smoke55"
