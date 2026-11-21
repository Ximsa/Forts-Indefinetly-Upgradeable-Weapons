local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head58",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.8660254037844386,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head58"
NodeEffects = {}
MinFireSpeed = 27100.0
MaxFireSpeed = 27100.1
EnergyFireCost = 4602.992931939558
MetalFireCost = 115.07482329848892
ReloadTime = 0.4921875
Projectile = "_sniperrifle58"
FireStdDev =2.8413864340161995e-05
FireStdDevAuto =5.682772868032399e-05
