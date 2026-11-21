local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/magnabeam.lua")
path = tmp
Sprites={{Name = "magnabeam_base5",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/magnabeam/base.tga",colour={0.0,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="magnabeam_base5"
NodeEffects = {}
EnergyFireCost = 2142.8571500000003
Projectile = "magnabeam5"
DestroyProjectile = "magneticfield5"
