local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/magnabeam.lua")
path = tmp
Sprites={{Name = "magnabeam_base37",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/magnabeam/base.tga",colour={0.7071067811865476,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="magnabeam_base37"
NodeEffects = {}
EnergyFireCost = 15857.14291
Projectile = "magnabeam37"
DestroyProjectile = "magneticfield37"
