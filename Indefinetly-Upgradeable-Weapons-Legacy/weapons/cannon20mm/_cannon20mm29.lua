local tmp = path
path = "mods/weapon_pack"
dofile("mods/weapon_pack/weapons/20mmcannon.lua")
path = tmp
Sprites={{Name = "20mmcannon-barrel29",States={Normal={Frames={{texture="mods/weapon_pack/weapons/20mmcannon/barrel.tga",colour={0.5,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="20mmcannon-barrel29"
NodeEffects = {}
MinFireSpeed = 9111.108000000004
MaxFireSpeed = 9111.208000000004
EnergyFireCost = 12556.596354056333
MetalFireCost = 200.90554166490134
ReloadTime = 20.109375
Projectile = "_cannon20mm29"
FireStdDev = 0.010937500000000001
FireStdDevAuto = 0.010937500000000001
