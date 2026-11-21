local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head36",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.7071067811865476,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head36"
NodeEffects = {}
MinFireSpeed = 20500.0
MaxFireSpeed = 20500.1
EnergyFireCost = 2532.840842123228
MetalFireCost = 63.32102105308071
ReloadTime = 0.6468750000000001
Projectile = "_sniperrifle36"
FireStdDev =0.00023129666779938738
FireStdDevAuto =0.00046259333559877476
