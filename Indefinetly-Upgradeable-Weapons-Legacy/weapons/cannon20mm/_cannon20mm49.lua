local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel49",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.8660254037844386,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel49"
NodeEffects = {}
MinFireSpeed = 11333.32800000002
MaxFireSpeed = 11333.42800000002
EnergyFireCost = 22938.040816931476
MetalFireCost = 367.0086530709036
ReloadTime = 16.046875
Projectile = "_cannon20mm49"
FireStdDev = 0.01
FireStdDevAuto = 0.01
