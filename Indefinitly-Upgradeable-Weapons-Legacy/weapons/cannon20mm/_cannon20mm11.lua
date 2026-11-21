local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel11",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.0,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel11"
NodeEffects = {}
MinFireSpeed = 7111.109999999999
MaxFireSpeed = 7111.209999999999
EnergyFireCost = 5602.576661154911
MetalFireCost = 89.64122657847857
ReloadTime = 23.765625
Projectile = "_cannon20mm11"
FireStdDev = 0.0165625
FireStdDevAuto = 0.0165625
