local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head53",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.8660254037844386,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head53"
NodeEffects = {}
MinFireSpeed = 25600.0
MaxFireSpeed = 25600.1
EnergyFireCost = 30515.16357834845
MetalFireCost = 305.1516357834845
ReloadTime = 17.578125
Projectile = "_sniperemp53"
FireStdDev =7.040125024380667e-06
FireStdDevAuto =2.8160500097522667e-05
