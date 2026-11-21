local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/magnabeam.lua")
path = tmp
Sprites={{Name = "magnabeam_base32",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/magnabeam/base.tga",colour={0.7071067811865476,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="magnabeam_base32"
NodeEffects = {}
EnergyFireCost = 13714.28576
Projectile = "magnabeam32"
DestroyProjectile = "magneticfield32"
