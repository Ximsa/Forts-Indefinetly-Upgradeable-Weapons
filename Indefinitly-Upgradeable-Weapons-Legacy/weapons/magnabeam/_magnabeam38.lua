local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/magnabeam.lua")
path = tmp
Sprites={{Name = "magnabeam_base38",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/magnabeam/base.tga",colour={0.7071067811865476,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="magnabeam_base38"
NodeEffects = {}
EnergyFireCost = 16285.71434
Projectile = "magnabeam38"
DestroyProjectile = "magneticfield38"
