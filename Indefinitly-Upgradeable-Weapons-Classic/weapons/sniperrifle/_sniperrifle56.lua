local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head56",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.8660254037844386,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head56"
NodeEffects = {}
MinFireSpeed = 26500.0
MaxFireSpeed = 26500.1
EnergyFireCost = 4384.288532360812
MetalFireCost = 109.60721330902027
ReloadTime = 0.5062500000000001
Projectile = "_sniperrifle56"
FireStdDev =3.4380775851596015e-05
FireStdDevAuto =6.876155170319203e-05
