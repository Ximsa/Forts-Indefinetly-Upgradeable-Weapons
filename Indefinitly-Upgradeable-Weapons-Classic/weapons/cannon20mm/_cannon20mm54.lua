local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel54",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.8660254037844386,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel54"
NodeEffects = {}
MinFireSpeed = 11888.883000000023
MaxFireSpeed = 11888.983000000024
EnergyFireCost = 26076.635841050123
MetalFireCost = 417.226173456802
ReloadTime = 15.03125
Projectile = "_cannon20mm54"
FireStdDev = 0.01
FireStdDevAuto = 0.01
