local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel36",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.7071067811865476,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel36"
NodeEffects = {}
MinFireSpeed = 9888.88500000001
MaxFireSpeed = 9888.98500000001
EnergyFireCost = 15830.25526327018
MetalFireCost = 253.28408421232288
ReloadTime = 18.6875
Projectile = "_cannon20mm36"
FireStdDev = 0.01
FireStdDevAuto = 0.01
