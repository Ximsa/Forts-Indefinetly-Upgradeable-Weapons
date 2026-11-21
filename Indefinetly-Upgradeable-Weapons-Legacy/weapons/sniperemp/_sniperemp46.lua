local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head46",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.7071067811865476,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head46"
NodeEffects = {}
MinFireSpeed = 23500.0
MaxFireSpeed = 23500.1
EnergyFireCost = 25402.088397984233
MetalFireCost = 254.02088397984238
ReloadTime = 19.21875
Projectile = "_sniperemp46"
FireStdDev =1.3719212021148527e-05
FireStdDevAuto =5.487684808459411e-05
