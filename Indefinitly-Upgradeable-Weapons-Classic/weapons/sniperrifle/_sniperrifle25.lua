local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head25",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.5,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head25"
NodeEffects = {}
MinFireSpeed = 17200.0
MaxFireSpeed = 17200.1
EnergyFireCost = 1734.3050812557253
MetalFireCost = 43.357627031393136
ReloadTime = 0.72421875
Projectile = "_sniperrifle25"
FireStdDev =0.0006599163869660077
FireStdDevAuto =0.0013198327739320154
