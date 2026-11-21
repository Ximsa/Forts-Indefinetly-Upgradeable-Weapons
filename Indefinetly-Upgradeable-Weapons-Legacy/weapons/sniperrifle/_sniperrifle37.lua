local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head37",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.7071067811865476,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head37"
NodeEffects = {}
MinFireSpeed = 20800.0
MaxFireSpeed = 20800.1
EnergyFireCost = 2612.4164802814034
MetalFireCost = 65.3104120070351
ReloadTime = 0.63984375
Projectile = "_sniperrifle37"
FireStdDev =0.00021026969799944306
FireStdDevAuto =0.00042053939599888613
