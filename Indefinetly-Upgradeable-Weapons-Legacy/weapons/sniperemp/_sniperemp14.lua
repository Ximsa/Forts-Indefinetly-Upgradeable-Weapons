local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head14",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.0,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head14"
NodeEffects = {}
MinFireSpeed = 13900.0
MaxFireSpeed = 13900.1
EnergyFireCost = 7957.322458967594
MetalFireCost = 79.57322458967593
ReloadTime = 26.71875
Projectile = "_sniperemp14"
FireStdDev =0.00028966437973668776
FireStdDevAuto =0.001158657518946751
