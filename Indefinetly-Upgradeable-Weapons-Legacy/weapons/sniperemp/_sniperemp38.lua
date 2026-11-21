local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head38",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.7071067811865476,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head38"
NodeEffects = {}
MinFireSpeed = 21100.0
MaxFireSpeed = 21100.1
EnergyFireCost = 20199.266158393504
MetalFireCost = 201.99266158393507
ReloadTime = 21.09375
Projectile = "_sniperemp38"
FireStdDev =2.9408349370551485e-05
FireStdDevAuto =0.00011763339748220594
