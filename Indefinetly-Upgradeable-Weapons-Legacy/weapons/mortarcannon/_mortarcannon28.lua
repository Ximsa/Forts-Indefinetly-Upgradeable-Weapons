local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head28",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.5,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head28"
NodeEffects = {}
MinFireSpeed = 148.28182935775226
MaxFireSpeed = 11095.0
EnergyFireCost = 3877.524512785748
MetalFireCost = 96.93811281964372
ReloadTime = 7.8125
Projectile = "_mortar228"
FireStdDevAuto =6.97796844036481e-05
