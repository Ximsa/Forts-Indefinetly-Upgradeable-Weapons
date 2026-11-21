local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head19",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.5,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head19"
NodeEffects = {}
MinFireSpeed = 15400.0
MaxFireSpeed = 15400.1
EnergyFireCost = 10146.334421301304
MetalFireCost = 101.46334421301303
ReloadTime = 25.546875
Projectile = "_sniperemp19"
FireStdDev =0.00017985878990921367
FireStdDevAuto =0.0007194351596368547
