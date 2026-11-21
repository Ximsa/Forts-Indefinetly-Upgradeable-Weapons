local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head43",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.7071067811865476,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head43"
NodeEffects = {}
MinFireSpeed = 22600.0
MaxFireSpeed = 22600.1
EnergyFireCost = 3116.6717577308095
MetalFireCost = 77.91679394327026
ReloadTime = 0.59765625
Projectile = "_sniperrifle43"
FireStdDev =0.00011869176280096647
FireStdDevAuto =0.00023738352560193294
