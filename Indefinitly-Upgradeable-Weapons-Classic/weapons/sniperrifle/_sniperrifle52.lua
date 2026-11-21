local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head52",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.8660254037844386,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head52"
NodeEffects = {}
MinFireSpeed = 25300.0
MaxFireSpeed = 25300.1
EnergyFireCost = 3966.7086543883083
MetalFireCost = 99.16771635970773
ReloadTime = 0.534375
Projectile = "_sniperrifle52"
FireStdDev =5.0336893924321746e-05
FireStdDevAuto =0.00010067378784864349
