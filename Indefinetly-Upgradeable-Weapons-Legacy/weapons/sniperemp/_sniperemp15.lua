local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head15",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.0,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head15"
NodeEffects = {}
MinFireSpeed = 14200.0
MaxFireSpeed = 14200.1
EnergyFireCost = 8381.655622388962
MetalFireCost = 83.81655622388962
ReloadTime = 26.484375
Projectile = "_sniperemp15"
FireStdDev =0.0002633312543060798
FireStdDevAuto =0.0010533250172243191
