local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base50",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/smokebomb/base.tga",colour={0.8660254037844386,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base50"
NodeEffects = {}
EnergyFireCost = 2825.5737245635223
MetalFireCost = 282.55737245635237
ReloadTime = 9.993749999999999
FireSpreadMultiplier = 0.074
Projectile = "smokebomb50"
DestroyProjectile = "smoke50"
