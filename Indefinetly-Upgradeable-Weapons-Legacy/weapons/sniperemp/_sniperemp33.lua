local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head33",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.7071067811865476,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head33"
NodeEffects = {}
MinFireSpeed = 19600.0
MaxFireSpeed = 19600.1
EnergyFireCost = 17260.382422873503
MetalFireCost = 172.60382422873508
ReloadTime = 22.265625
Projectile = "_sniperemp33"
FireStdDev =4.73624407447669e-05
FireStdDevAuto =0.0001894497629790676
