local tmp = path
path = "mods/dlc1_weapons"
dofile("mods/dlc1_weapons/weapons/magnabeam.lua")
path = tmp
Sprites={{Name = "magnabeam_base53",States={Normal={Frames={{texture="mods/dlc1_weapons/weapons/magnabeam/base.tga",colour={0.8660254037844386,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="magnabeam_base53"
NodeEffects = {}
EnergyFireCost = 22714.28579
Projectile = "magnabeam53"
DestroyProjectile = "magneticfield53"
