local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head34",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.7071067811865476,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head34"
NodeEffects = {}
MinFireSpeed = 19900.0
MaxFireSpeed = 19900.1
EnergyFireCost = 17830.0758982309
MetalFireCost = 178.30075898230908
ReloadTime = 22.03125
Projectile = "_sniperemp34"
FireStdDev =4.305676431342445e-05
FireStdDevAuto =0.0001722270572536978
