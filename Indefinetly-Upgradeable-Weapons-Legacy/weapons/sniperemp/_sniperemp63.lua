local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head63",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.8660254037844386,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head63"
NodeEffects = {}
MinFireSpeed = 28600.0
MaxFireSpeed = 28600.1
EnergyFireCost = 38852.7368877367
MetalFireCost = 388.527368877367
ReloadTime = 15.234375
Projectile = "_sniperemp63"
FireStdDev =2.7142729598948825e-06
FireStdDevAuto =1.085709183957953e-05
