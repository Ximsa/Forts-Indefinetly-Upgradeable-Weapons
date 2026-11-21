local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel26",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.5,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel26"
NodeEffects = {}
MinFireSpeed = 8777.775000000001
MaxFireSpeed = 8777.875000000002
EnergyFireCost = 11258.772488439667
MetalFireCost = 180.14035981503466
ReloadTime = 20.71875
Projectile = "_cannon20mm26"
FireStdDev = 0.011875
FireStdDevAuto = 0.011875
