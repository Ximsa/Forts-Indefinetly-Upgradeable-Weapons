local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head32",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.7071067811865476,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head32"
NodeEffects = {}
MinFireSpeed = 19300.0
MaxFireSpeed = 19300.1
EnergyFireCost = 2226.5937950028806
MetalFireCost = 55.66484487507202
ReloadTime = 0.675
Projectile = "_sniperrifle32"
FireStdDev =0.0003386414513250832
FireStdDevAuto =0.0006772829026501664
