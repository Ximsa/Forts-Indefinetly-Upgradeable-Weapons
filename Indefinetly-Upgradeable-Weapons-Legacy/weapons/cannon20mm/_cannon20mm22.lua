local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel22",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.5,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel22"
NodeEffects = {}
MinFireSpeed = 8333.330999999998
MaxFireSpeed = 8333.430999999999
EnergyFireCost = 9619.624743302253
MetalFireCost = 153.91399589283606
ReloadTime = 21.53125
Projectile = "_cannon20mm22"
FireStdDev = 0.013125000000000001
FireStdDevAuto = 0.013125000000000001
