local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperemp.lua")
path = tmp
Sprites={{Name = "sniperemp-head22",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_emp.tga",colour={0.5,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperemp-head22"
NodeEffects = {}
MinFireSpeed = 16300.0
MaxFireSpeed = 16300.1
EnergyFireCost = 11543.549691962702
MetalFireCost = 115.43549691962701
ReloadTime = 24.84375
Projectile = "_sniperemp22"
FireStdDev =0.00013513057093103952
FireStdDevAuto =0.0005405222837241581
