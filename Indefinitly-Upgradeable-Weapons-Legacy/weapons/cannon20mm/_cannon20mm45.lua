local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel45",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.7071067811865476,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel45"
NodeEffects = {}
MinFireSpeed = 10888.884000000016
MaxFireSpeed = 10888.984000000017
EnergyFireCost = 20596.585352192196
MetalFireCost = 329.5453656350751
ReloadTime = 16.859375
Projectile = "_cannon20mm45"
FireStdDev = 0.01
FireStdDevAuto = 0.01
