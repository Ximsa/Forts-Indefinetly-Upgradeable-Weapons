local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head35",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.7071067811865476,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head35"
NodeEffects = {}
MinFireSpeed = 20200.0
MaxFireSpeed = 20200.1
EnergyFireCost = 2454.4894445521013
MetalFireCost = 61.362236113802545
ReloadTime = 0.65390625
Projectile = "_sniperrifle35"
FireStdDev =0.00025442633457932614
FireStdDevAuto =0.0005088526691586523
