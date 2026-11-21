local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head48",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.8660254037844386,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head48"
NodeEffects = {}
MinFireSpeed = 24100.0
MaxFireSpeed = 24100.1
EnergyFireCost = 26806.79284215903
MetalFireCost = 268.06792842159035
ReloadTime = 18.75
Projectile = "_sniperemp48"
FireStdDev =1.133819175301531e-05
FireStdDevAuto =4.535276701206124e-05
