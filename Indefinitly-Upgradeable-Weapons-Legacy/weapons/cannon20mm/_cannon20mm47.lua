local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel47",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.7071067811865476,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel47"
NodeEffects = {}
MinFireSpeed = 11111.106000000018
MaxFireSpeed = 11111.206000000018
EnergyFireCost = 21749.163357668953
MetalFireCost = 347.9866137227032
ReloadTime = 16.453125
Projectile = "_cannon20mm47"
FireStdDev = 0.01
FireStdDevAuto = 0.01
