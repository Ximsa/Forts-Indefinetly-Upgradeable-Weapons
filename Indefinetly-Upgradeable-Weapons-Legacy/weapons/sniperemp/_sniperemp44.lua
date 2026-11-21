local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head44",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.7071067811865476,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head44"
NodeEffects = {}
MinFireSpeed = 22900.0
MaxFireSpeed = 22900.1
EnergyFireCost = 24040.27315459016
MetalFireCost = 240.40273154590162
ReloadTime = 19.6875
Projectile = "_sniperemp44"
FireStdDev =1.660024654558972e-05
FireStdDevAuto =6.640098618235888e-05
