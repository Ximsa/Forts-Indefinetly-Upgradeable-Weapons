local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head50",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.8660254037844386,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head50"
NodeEffects = {}
MinFireSpeed = 24700.0
MaxFireSpeed = 24700.1
EnergyFireCost = 28255.73724563523
MetalFireCost = 282.55737245635237
ReloadTime = 18.28125
Projectile = "_sniperemp50"
FireStdDev =9.370406407450668e-06
FireStdDevAuto =3.748162562980267e-05
