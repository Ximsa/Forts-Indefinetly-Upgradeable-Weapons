local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head24",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.5,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head24"
NodeEffects = {}
MinFireSpeed = 16900.0
MaxFireSpeed = 16900.1
EnergyFireCost = 1668.2388492364064
MetalFireCost = 41.705971230910166
ReloadTime = 0.73125
Projectile = "_sniperrifle24"
FireStdDev =0.0007259080256626086
FireStdDevAuto =0.0014518160513252172
