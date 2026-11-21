local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel20",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.5,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel20"
NodeEffects = {}
MinFireSpeed = 8111.108999999998
MaxFireSpeed = 8111.208999999998
EnergyFireCost = 8837.39241386178
MetalFireCost = 141.3982786217885
ReloadTime = 21.9375
Projectile = "_cannon20mm20"
FireStdDev = 0.01375
FireStdDevAuto = 0.01375
