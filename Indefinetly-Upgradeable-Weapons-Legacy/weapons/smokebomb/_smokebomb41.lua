local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/smokebomb.lua")
path = tmp
Sprites={{Name = "smokebomb_base41",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/smokebomb/base.tga",colour={0.7071067811865476,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="smokebomb_base41"
NodeEffects = {}
EnergyFireCost = 2207.5113940234432
MetalFireCost = 220.75113940234442
ReloadTime = 11.146874999999998
FireSpreadMultiplier = 0.065
Projectile = "smokebomb41"
DestroyProjectile = "smoke41"
