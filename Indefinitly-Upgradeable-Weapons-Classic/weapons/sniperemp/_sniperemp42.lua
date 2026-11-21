local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head42",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.7071067811865476,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head42"
NodeEffects = {}
MinFireSpeed = 22300.0
MaxFireSpeed = 22300.1
EnergyFireCost = 22720.037595550602
MetalFireCost = 227.20037595550605
ReloadTime = 20.15625
Projectile = "_sniperemp42"
FireStdDev =2.0086298320163566e-05
FireStdDevAuto =8.034519328065426e-05
