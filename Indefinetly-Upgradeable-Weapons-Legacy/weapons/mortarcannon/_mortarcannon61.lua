local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head61",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.8660254037844386,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head61"
NodeEffects = {}
MinFireSpeed = 4.582376264781807
MaxFireSpeed = 18850.0
EnergyFireCost = 9888.063765975197
MetalFireCost = 247.20159414937987
ReloadTime = 5.234375
Projectile = "_mortar261"
FireStdDevAuto =2.156412359897321e-06
