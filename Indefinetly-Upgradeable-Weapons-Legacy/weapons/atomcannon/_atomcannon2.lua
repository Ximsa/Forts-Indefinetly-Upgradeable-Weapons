local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/atomcannon.lua")
path = tmp
Sprites={{Name = "atomcannon-barrel2",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/atomcannon/barrel.tga",colour={0.0,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="atomcannon-barrel2"
NodeEffects = {}
MinFireSpeed = 1350.0
MaxFireSpeed = 4650.1
EnergyFireCost = 27890.625
MetalFireCost = 557.8125
ReloadTime = 123.046875
Projectile = "_atomcannon2"
FireStdDev =0.00909090909090909
FireStdDevAuto =0.01
