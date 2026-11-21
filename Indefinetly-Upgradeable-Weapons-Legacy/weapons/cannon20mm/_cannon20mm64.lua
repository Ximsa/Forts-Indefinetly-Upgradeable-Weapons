local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel64",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.0,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel64"
NodeEffects = {}
MinFireSpeed = 12999.993000000031
MaxFireSpeed = 13000.093000000032
EnergyFireCost = 33133.17575133966
MetalFireCost = 530.1308120214344
ReloadTime = 13.0
Projectile = "_cannon20mm64"
FireStdDev = 0.01
FireStdDevAuto = 0.01
