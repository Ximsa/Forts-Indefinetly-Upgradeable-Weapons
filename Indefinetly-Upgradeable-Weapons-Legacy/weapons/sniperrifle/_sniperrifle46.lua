local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head46",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.7071067811865476,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head46"
NodeEffects = {}
MinFireSpeed = 23500.0
MaxFireSpeed = 23500.1
EnergyFireCost = 3386.94511973123
MetalFireCost = 84.67362799328077
ReloadTime = 0.5765625000000001
Projectile = "_sniperrifle46"
FireStdDev =8.91748781374654e-05
FireStdDevAuto =0.0001783497562749308
