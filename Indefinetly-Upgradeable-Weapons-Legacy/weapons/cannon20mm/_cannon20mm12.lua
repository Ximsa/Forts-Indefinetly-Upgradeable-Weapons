local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel12",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.0,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel12"
NodeEffects = {}
MinFireSpeed = 7222.220999999999
MaxFireSpeed = 7222.320999999999
EnergyFireCost = 5940.116921485456
MetalFireCost = 95.04187074376729
ReloadTime = 23.5625
Projectile = "_cannon20mm12"
FireStdDev = 0.01625
FireStdDevAuto = 0.01625
