local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel43",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel43"
NodeEffects = {}
MinFireSpeed = 10666.662000000015
MaxFireSpeed = 10666.762000000015
EnergyFireCost = 19479.19848581757
MetalFireCost = 311.6671757730811
ReloadTime = 17.265625
Projectile = "_cannon20mm43"
FireStdDev = 0.01
FireStdDevAuto = 0.01
