local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel34",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.7071067811865476,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel34"
NodeEffects = {}
MinFireSpeed = 9666.663000000008
MaxFireSpeed = 9666.763000000008
EnergyFireCost = 14858.396581859091
MetalFireCost = 237.73434530974544
ReloadTime = 19.09375
Projectile = "_cannon20mm34"
FireStdDev = 0.01
FireStdDevAuto = 0.01
