local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel31",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.5,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel31"
NodeEffects = {}
MinFireSpeed = 9333.330000000005
MaxFireSpeed = 9333.430000000006
EnergyFireCost = 13455.961815402346
MetalFireCost = 215.29538904643752
ReloadTime = 19.703125
Projectile = "_cannon20mm31"
FireStdDev = 0.0103125
FireStdDevAuto = 0.0103125
