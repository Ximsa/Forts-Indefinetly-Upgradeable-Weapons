local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head9",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.0,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head9"
NodeEffects = {}
MinFireSpeed = 12400.0
MaxFireSpeed = 12400.1
EnergyFireCost = 5931.594036664762
MetalFireCost = 59.31594036664762
ReloadTime = 27.890625
Projectile = "_sniperemp9"
FireStdDev =0.0004665073802097331
FireStdDevAuto =0.0018660295208389325
