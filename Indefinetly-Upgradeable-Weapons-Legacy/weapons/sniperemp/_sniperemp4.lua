local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head4",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.0,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head4"
NodeEffects = {}
MinFireSpeed = 10900.0
MaxFireSpeed = 10900.1
EnergyFireCost = 4056.969451904297
MetalFireCost = 40.56969451904297
ReloadTime = 29.0625
Projectile = "_sniperemp4"
FireStdDev =0.0007513148009015777
FireStdDevAuto =0.0030052592036063108
