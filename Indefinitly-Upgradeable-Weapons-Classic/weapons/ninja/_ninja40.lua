local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base40",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.7071067811865476,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base40"
NodeEffects = {}
MinFireSpeed = 14800.0
MaxFireSpeed = 14800.1
EnergyFireCost = 1072.0056093653875
MetalFireCost = 14.293408124871823
ReloadTime = 1.44375
Projectile = "_star40"
FireStdDev =0.00014582652580438752
FireStdDevAuto =0.0005833061032175501
