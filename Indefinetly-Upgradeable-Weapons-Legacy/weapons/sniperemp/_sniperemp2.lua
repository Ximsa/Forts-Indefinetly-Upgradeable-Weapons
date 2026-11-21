local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head2",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.0,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head2"
NodeEffects = {}
MinFireSpeed = 10300.0
MaxFireSpeed = 10300.1
EnergyFireCost = 3346.875
MetalFireCost = 33.46875
ReloadTime = 29.53125
Projectile = "_sniperemp2"
FireStdDev =0.0009090909090909091
FireStdDevAuto =0.0036363636363636364
