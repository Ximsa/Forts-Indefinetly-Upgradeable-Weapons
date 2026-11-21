local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel10",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.0,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel10"
NodeEffects = {}
MinFireSpeed = 6999.998999999999
MaxFireSpeed = 7000.098999999999
EnergyFireCost = 5270.229327906373
MetalFireCost = 84.32366924650198
ReloadTime = 23.96875
Projectile = "_cannon20mm10"
FireStdDev = 0.016875
FireStdDevAuto = 0.016875
