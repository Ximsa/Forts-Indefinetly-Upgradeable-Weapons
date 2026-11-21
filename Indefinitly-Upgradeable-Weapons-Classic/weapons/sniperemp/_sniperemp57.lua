local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head57",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.8660254037844386,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head57"
NodeEffects = {}
MinFireSpeed = 26800.0
MaxFireSpeed = 26800.1
EnergyFireCost = 33695.94780509212
MetalFireCost = 336.9594780509211
ReloadTime = 16.640625
Projectile = "_sniperemp57"
FireStdDev =4.80850011910434e-06
FireStdDevAuto =1.923400047641736e-05
