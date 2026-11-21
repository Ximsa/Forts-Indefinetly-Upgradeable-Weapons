local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel53",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.8660254037844386,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel53"
NodeEffects = {}
MinFireSpeed = 11777.772000000023
MaxFireSpeed = 11777.872000000023
EnergyFireCost = 25429.302981957044
MetalFireCost = 406.8688477113127
ReloadTime = 15.234375
Projectile = "_cannon20mm53"
FireStdDev = 0.01
FireStdDevAuto = 0.01
