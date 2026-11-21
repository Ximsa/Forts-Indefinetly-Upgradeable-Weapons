local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head60",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.8660254037844386,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head60"
NodeEffects = {}
MinFireSpeed = 27700.0
MaxFireSpeed = 27700.1
EnergyFireCost = 4828.585238633943
MetalFireCost = 120.71463096584856
ReloadTime = 0.478125
Projectile = "_sniperrifle60"
FireStdDev =2.348253251253057e-05
FireStdDevAuto =4.696506502506114e-05
