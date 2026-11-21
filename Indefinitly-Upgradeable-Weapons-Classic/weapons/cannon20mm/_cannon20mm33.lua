local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel33",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.7071067811865476,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel33"
NodeEffects = {}
MinFireSpeed = 9555.552000000007
MaxFireSpeed = 9555.652000000007
EnergyFireCost = 14383.65201906126
MetalFireCost = 230.1384323049801
ReloadTime = 19.296875
Projectile = "_cannon20mm33"
FireStdDev = 0.01
FireStdDevAuto = 0.01
