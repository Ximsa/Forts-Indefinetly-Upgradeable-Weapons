local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/magnabeam.lua")
path = tmp
Sprites={{Name = "magnabeam_base4",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/magnabeam/base.tga",colour={0.0,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="magnabeam_base4"
NodeEffects = {}
EnergyFireCost = 1714.28572
Projectile = "magnabeam4"
DestroyProjectile = "magneticfield4"
