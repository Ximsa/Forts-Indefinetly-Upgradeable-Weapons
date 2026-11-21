local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head54",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.8660254037844386,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head54"
NodeEffects = {}
MinFireSpeed = 25900.0
MaxFireSpeed = 25900.1
EnergyFireCost = 4172.261734568019
MetalFireCost = 104.30654336420048
ReloadTime = 0.5203125
Projectile = "_sniperrifle54"
FireStdDev =4.160073878043119e-05
FireStdDevAuto =8.320147756086237e-05
