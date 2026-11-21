local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head42",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.7071067811865476,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head42"
NodeEffects = {}
MinFireSpeed = 22300.0
MaxFireSpeed = 22300.1
EnergyFireCost = 3029.3383460734126
MetalFireCost = 75.73345865183533
ReloadTime = 0.6046875
Projectile = "_sniperrifle42"
FireStdDev =0.00013056093908106313
FireStdDevAuto =0.00026112187816212625
