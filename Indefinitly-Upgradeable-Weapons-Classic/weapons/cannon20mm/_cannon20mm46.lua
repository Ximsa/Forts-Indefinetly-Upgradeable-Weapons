local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel46",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.7071067811865476,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel46"
NodeEffects = {}
MinFireSpeed = 10999.995000000017
MaxFireSpeed = 11000.095000000018
EnergyFireCost = 21168.4069983202
MetalFireCost = 338.69451197312316
ReloadTime = 16.65625
Projectile = "_cannon20mm46"
FireStdDev = 0.01
FireStdDevAuto = 0.01
