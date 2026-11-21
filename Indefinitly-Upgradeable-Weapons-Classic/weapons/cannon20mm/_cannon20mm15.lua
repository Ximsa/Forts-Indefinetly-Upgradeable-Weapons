local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel15",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.0,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel15"
NodeEffects = {}
MinFireSpeed = 7555.553999999998
MaxFireSpeed = 7555.653999999999
EnergyFireCost = 6984.713018657469
MetalFireCost = 111.75540829851948
ReloadTime = 22.953125
Projectile = "_cannon20mm15"
FireStdDev = 0.0153125
FireStdDevAuto = 0.0153125
