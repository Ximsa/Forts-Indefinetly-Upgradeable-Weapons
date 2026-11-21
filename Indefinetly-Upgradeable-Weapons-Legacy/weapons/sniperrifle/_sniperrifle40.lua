local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head40",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.7071067811865476,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head40"
NodeEffects = {}
MinFireSpeed = 21700.0
MaxFireSpeed = 21700.1
EnergyFireCost = 2858.6816249743665
MetalFireCost = 71.46704062435917
ReloadTime = 0.61875
Projectile = "_sniperrifle40"
FireStdDev =0.0001579787362880864
FireStdDevAuto =0.0003159574725761728
