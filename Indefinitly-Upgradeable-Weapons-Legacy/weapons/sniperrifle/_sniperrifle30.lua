local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head30",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.5,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head30"
NodeEffects = {}
MinFireSpeed = 18700.0
MaxFireSpeed = 18700.1
EnergyFireCost = 2080.4469075341535
MetalFireCost = 52.011172688353845
ReloadTime = 0.6890625
Projectile = "_sniperrifle30"
FireStdDev =0.00040975615610335073
FireStdDevAuto =0.0008195123122067015
