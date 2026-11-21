local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel3",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.0,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel3"
NodeEffects = {}
MinFireSpeed = 6222.222
MaxFireSpeed = 6222.322
EnergyFireCost = 3082.6416015625
MetalFireCost = 49.322265625
ReloadTime = 25.390625
Projectile = "_cannon20mm3"
FireStdDev = 0.0190625
FireStdDevAuto = 0.0190625
