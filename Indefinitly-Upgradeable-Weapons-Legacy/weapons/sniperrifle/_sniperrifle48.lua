local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head48",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.8660254037844386,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head48"
NodeEffects = {}
MinFireSpeed = 24100.0
MaxFireSpeed = 24100.1
EnergyFireCost = 3574.2390456212033
MetalFireCost = 89.3559761405301
ReloadTime = 0.5625
Projectile = "_sniperrifle48"
FireStdDev =7.369824639459949e-05
FireStdDevAuto =0.00014739649278919898
