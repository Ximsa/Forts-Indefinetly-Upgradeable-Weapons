local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head58",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.8660254037844386,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head58"
NodeEffects = {}
MinFireSpeed = 27100.0
MaxFireSpeed = 27100.1
EnergyFireCost = 34522.44698954668
MetalFireCost = 345.22446989546677
ReloadTime = 16.40625
Projectile = "_sniperemp58"
FireStdDev =4.371363744640309e-06
FireStdDevAuto =1.7485454978561234e-05
