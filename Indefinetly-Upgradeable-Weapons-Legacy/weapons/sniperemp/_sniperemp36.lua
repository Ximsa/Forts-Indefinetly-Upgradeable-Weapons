local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head36",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.7071067811865476,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head36"
NodeEffects = {}
MinFireSpeed = 20500.0
MaxFireSpeed = 20500.1
EnergyFireCost = 18996.306315924212
MetalFireCost = 189.96306315924213
ReloadTime = 21.5625
Projectile = "_sniperemp36"
FireStdDev =3.55841027383673e-05
FireStdDevAuto =0.0001423364109534692
