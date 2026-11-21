local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head14",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.0,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head14"
NodeEffects = {}
MinFireSpeed = 13900.0
MaxFireSpeed = 13900.1
EnergyFireCost = 1060.9763278623457
MetalFireCost = 26.524408196558642
ReloadTime = 0.8015625000000001
Projectile = "_sniperrifle14"
FireStdDev =0.0018828184682884701
FireStdDevAuto =0.0037656369365769403
