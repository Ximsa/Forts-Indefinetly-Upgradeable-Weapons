local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel6",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.0,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel6"
NodeEffects = {}
MinFireSpeed = 6555.554999999999
MaxFireSpeed = 6555.655
EnergyFireCost = 3991.18976527825
MetalFireCost = 63.859036244452
ReloadTime = 24.78125
Projectile = "_cannon20mm6"
FireStdDev = 0.018125000000000002
FireStdDevAuto = 0.018125000000000002
