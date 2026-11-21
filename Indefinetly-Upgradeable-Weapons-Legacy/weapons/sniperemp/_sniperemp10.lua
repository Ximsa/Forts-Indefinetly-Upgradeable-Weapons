local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head10",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.0,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head10"
NodeEffects = {}
MinFireSpeed = 12700.0
MaxFireSpeed = 12700.1
EnergyFireCost = 6324.275193487649
MetalFireCost = 63.24275193487649
ReloadTime = 27.65625
Projectile = "_sniperemp10"
FireStdDev =0.00042409761837248464
FireStdDevAuto =0.0016963904734899385
