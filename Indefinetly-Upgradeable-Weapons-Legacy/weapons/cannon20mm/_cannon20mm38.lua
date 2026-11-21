local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel38",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.7071067811865476,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel38"
NodeEffects = {}
MinFireSpeed = 10111.10700000001
MaxFireSpeed = 10111.207000000011
EnergyFireCost = 16832.72179866126
MetalFireCost = 269.3235487785801
ReloadTime = 18.28125
Projectile = "_cannon20mm38"
FireStdDev = 0.01
FireStdDevAuto = 0.01
