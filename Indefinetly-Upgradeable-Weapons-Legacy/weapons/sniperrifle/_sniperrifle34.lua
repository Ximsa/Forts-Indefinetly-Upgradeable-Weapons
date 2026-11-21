local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head34",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.7071067811865476,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head34"
NodeEffects = {}
MinFireSpeed = 19900.0
MaxFireSpeed = 19900.1
EnergyFireCost = 2377.3434530974537
MetalFireCost = 59.43358632743635
ReloadTime = 0.6609375
Projectile = "_sniperrifle34"
FireStdDev =0.00027986896803725876
FireStdDevAuto =0.0005597379360745175
