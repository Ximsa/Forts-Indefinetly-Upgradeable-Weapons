local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head8",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.0,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head8"
NodeEffects = {}
MinFireSpeed = 12100.0
MaxFireSpeed = 12100.1
EnergyFireCost = 5544.954128408381
MetalFireCost = 55.44954128408381
ReloadTime = 28.125
Projectile = "_sniperemp8"
FireStdDev =0.0005131581182307065
FireStdDevAuto =0.002052632472922826
