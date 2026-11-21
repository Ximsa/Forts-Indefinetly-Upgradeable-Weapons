local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head12",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.0,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head12"
NodeEffects = {}
MinFireSpeed = 13300.0
MaxFireSpeed = 13300.1
EnergyFireCost = 950.4187074376729
MetalFireCost = 23.760467685941823
ReloadTime = 0.815625
Projectile = "_sniperrifle12"
FireStdDev =0.0022782103466290494
FireStdDevAuto =0.004556420693258099
