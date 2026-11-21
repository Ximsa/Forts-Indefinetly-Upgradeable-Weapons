local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel8",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.0,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel8"
NodeEffects = {}
MinFireSpeed = 6777.776999999999
MaxFireSpeed = 6777.8769999999995
EnergyFireCost = 4620.795107006984
MetalFireCost = 73.93272171211174
ReloadTime = 24.375
Projectile = "_cannon20mm8"
FireStdDev = 0.0175
FireStdDevAuto = 0.0175
