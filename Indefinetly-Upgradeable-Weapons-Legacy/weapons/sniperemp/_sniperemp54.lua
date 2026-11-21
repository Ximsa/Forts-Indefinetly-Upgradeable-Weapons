local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head54",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.8660254037844386,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head54"
NodeEffects = {}
MinFireSpeed = 25900.0
MaxFireSpeed = 25900.1
EnergyFireCost = 31291.963009260144
MetalFireCost = 312.91963009260144
ReloadTime = 17.34375
Projectile = "_sniperemp54"
FireStdDev =6.400113658527878e-06
FireStdDevAuto =2.560045463411151e-05
