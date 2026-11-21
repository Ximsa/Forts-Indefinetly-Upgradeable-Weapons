local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head37",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.7071067811865476,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head37"
NodeEffects = {}
MinFireSpeed = 20800.0
MaxFireSpeed = 20800.1
EnergyFireCost = 19593.12360211053
MetalFireCost = 195.9312360211053
ReloadTime = 21.328125
Projectile = "_sniperemp37"
FireStdDev =3.234918430760664e-05
FireStdDevAuto =0.00012939673723042655
