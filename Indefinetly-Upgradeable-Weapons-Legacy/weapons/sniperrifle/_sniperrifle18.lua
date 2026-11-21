local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head18",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.5,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head18"
NodeEffects = {}
MinFireSpeed = 15100.0
MaxFireSpeed = 15100.1
EnergyFireCost = 1292.6469804375042
MetalFireCost = 32.31617451093761
ReloadTime = 0.7734375
Projectile = "_sniperrifle18"
FireStdDev =0.0012859903478508773
FireStdDevAuto =0.0025719806957017546
