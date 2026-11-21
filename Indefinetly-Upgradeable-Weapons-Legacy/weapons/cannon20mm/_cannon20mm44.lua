local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel44",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.7071067811865476,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel44"
NodeEffects = {}
MinFireSpeed = 10777.773000000016
MaxFireSpeed = 10777.873000000016
EnergyFireCost = 20033.56096215847
MetalFireCost = 320.5369753945355
ReloadTime = 17.0625
Projectile = "_cannon20mm44"
FireStdDev = 0.01
FireStdDevAuto = 0.01
