local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head26",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.5,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head26"
NodeEffects = {}
MinFireSpeed = 17500.0
MaxFireSpeed = 17500.1
EnergyFireCost = 13510.526986127597
MetalFireCost = 135.10526986127599
ReloadTime = 23.90625
Projectile = "_sniperemp26"
FireStdDev =9.229599817706406e-05
FireStdDevAuto =0.00036918399270825623
