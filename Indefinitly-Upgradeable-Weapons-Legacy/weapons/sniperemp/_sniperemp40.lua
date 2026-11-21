local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head40",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.7071067811865476,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head40"
NodeEffects = {}
MinFireSpeed = 21700.0
MaxFireSpeed = 21700.1
EnergyFireCost = 21440.112187307754
MetalFireCost = 214.40112187307759
ReloadTime = 20.625
Projectile = "_sniperemp40"
FireStdDev =2.4304420967397917e-05
FireStdDevAuto =9.721768386959167e-05
