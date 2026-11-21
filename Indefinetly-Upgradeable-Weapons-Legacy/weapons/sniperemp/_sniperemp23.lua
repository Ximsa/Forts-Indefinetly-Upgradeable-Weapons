local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head23",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.5,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head23"
NodeEffects = {}
MinFireSpeed = 16600.0
MaxFireSpeed = 16600.1
EnergyFireCost = 12023.917655899619
MetalFireCost = 120.23917655899619
ReloadTime = 24.609375
Projectile = "_sniperemp23"
FireStdDev =0.0001228459735736723
FireStdDevAuto =0.0004913838942946892
