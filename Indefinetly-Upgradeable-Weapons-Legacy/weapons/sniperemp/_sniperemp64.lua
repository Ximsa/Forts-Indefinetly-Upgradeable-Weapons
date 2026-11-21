local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head64",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.0,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head64"
NodeEffects = {}
MinFireSpeed = 28900.0
MaxFireSpeed = 28900.1
EnergyFireCost = 39759.81090160758
MetalFireCost = 397.59810901607585
ReloadTime = 15.0
Projectile = "_sniperemp64"
FireStdDev =2.4675208726317112e-06
FireStdDevAuto =9.870083490526845e-06
