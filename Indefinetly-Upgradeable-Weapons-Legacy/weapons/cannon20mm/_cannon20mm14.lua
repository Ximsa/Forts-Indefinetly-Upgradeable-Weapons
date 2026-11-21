local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel14",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.0,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel14"
NodeEffects = {}
MinFireSpeed = 7444.442999999998
MaxFireSpeed = 7444.542999999999
EnergyFireCost = 6631.102049139661
MetalFireCost = 106.09763278623457
ReloadTime = 23.15625
Projectile = "_cannon20mm14"
FireStdDev = 0.015625
FireStdDevAuto = 0.015625
