local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/magnabeam.lua")
path = tmp
Sprites={{Name = "magnabeam_base42",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/magnabeam/base.tga",colour={0.7071067811865476,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="magnabeam_base42"
NodeEffects = {}
EnergyFireCost = 18000.000060000002
Projectile = "magnabeam42"
DestroyProjectile = "magneticfield42"
