local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/magnabeam.lua")
path = tmp
Sprites={{Name = "magnabeam_base22",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/magnabeam/base.tga",colour={0.5,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="magnabeam_base22"
NodeEffects = {}
EnergyFireCost = 9428.571460000001
Projectile = "magnabeam22"
DestroyProjectile = "magneticfield22"
