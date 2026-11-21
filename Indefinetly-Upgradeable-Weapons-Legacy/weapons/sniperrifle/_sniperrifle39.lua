local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head39",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.7071067811865476,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head39"
NodeEffects = {}
MinFireSpeed = 21400.0
MaxFireSpeed = 21400.1
EnergyFireCost = 2775.3172922824533
MetalFireCost = 69.38293230706134
ReloadTime = 0.62578125
Projectile = "_sniperrifle39"
FireStdDev =0.00017377660991689506
FireStdDevAuto =0.0003475532198337901
