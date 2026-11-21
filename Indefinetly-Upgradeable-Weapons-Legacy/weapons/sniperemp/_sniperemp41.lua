local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head41",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.7071067811865476,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head41"
NodeEffects = {}
MinFireSpeed = 22000.0
MaxFireSpeed = 22000.1
EnergyFireCost = 22075.113940234438
MetalFireCost = 220.75113940234442
ReloadTime = 20.390625
Projectile = "_sniperemp41"
FireStdDev =2.2094928152179922e-05
FireStdDevAuto =8.837971260871969e-05
