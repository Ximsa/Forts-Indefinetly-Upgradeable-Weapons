local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel42",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel42"
NodeEffects = {}
MinFireSpeed = 10555.551000000014
MaxFireSpeed = 10555.651000000014
EnergyFireCost = 18933.36466295884
MetalFireCost = 302.9338346073414
ReloadTime = 17.46875
Projectile = "_cannon20mm42"
FireStdDev = 0.01
FireStdDevAuto = 0.01
