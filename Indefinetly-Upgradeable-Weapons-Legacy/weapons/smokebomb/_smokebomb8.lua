local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base8",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/smokebomb/base.tga",colour={0.0,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base8"
NodeEffects = {}
EnergyFireCost = 554.4954128408381
MetalFireCost = 55.44954128408381
ReloadTime = 15.374999999999998
FireSpreadMultiplier = 0.032
Projectile = "smokebomb8"
DestroyProjectile = "smoke8"
