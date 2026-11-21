local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head27",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.5,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head27"
NodeEffects = {}
MinFireSpeed = 17800.0
MaxFireSpeed = 17800.1
EnergyFireCost = 1869.550529371445
MetalFireCost = 46.73876323428614
ReloadTime = 0.71015625
Projectile = "_sniperrifle27"
FireStdDev =0.00054538544377356
FireStdDevAuto =0.00109077088754712
