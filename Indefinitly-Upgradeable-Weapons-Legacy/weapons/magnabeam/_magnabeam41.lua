local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/magnabeam.lua")
path = tmp
Sprites={{Name = "magnabeam_base41",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/magnabeam/base.tga",colour={0.7071067811865476,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="magnabeam_base41"
NodeEffects = {}
EnergyFireCost = 17571.428630000002
Projectile = "magnabeam41"
DestroyProjectile = "magneticfield41"
