local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head55",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.8660254037844386,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head55"
NodeEffects = {}
MinFireSpeed = 26200.0
MaxFireSpeed = 26200.1
EnergyFireCost = 32080.899931279833
MetalFireCost = 320.80899931279833
ReloadTime = 17.109375
Projectile = "_sniperemp55"
FireStdDev =5.818285144116252e-06
FireStdDevAuto =2.3273140576465008e-05
