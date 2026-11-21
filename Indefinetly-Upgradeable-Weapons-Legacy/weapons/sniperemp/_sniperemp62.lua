local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head62",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.8660254037844386,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head62"
NodeEffects = {}
MinFireSpeed = 28300.0
MaxFireSpeed = 28300.1
EnergyFireCost = 37959.6178586946
MetalFireCost = 379.59617858694594
ReloadTime = 15.46875
Projectile = "_sniperemp62"
FireStdDev =2.985700255884371e-06
FireStdDevAuto =1.1942801023537483e-05
