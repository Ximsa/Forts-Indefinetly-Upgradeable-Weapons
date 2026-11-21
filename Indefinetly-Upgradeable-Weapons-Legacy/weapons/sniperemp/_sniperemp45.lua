local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head45",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.7071067811865476,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head45"
NodeEffects = {}
MinFireSpeed = 23200.0
MaxFireSpeed = 23200.1
EnergyFireCost = 24715.90242263063
MetalFireCost = 247.15902422630634
ReloadTime = 19.453125
Projectile = "_sniperemp45"
FireStdDev =1.509113322326338e-05
FireStdDevAuto =6.036453289305352e-05
