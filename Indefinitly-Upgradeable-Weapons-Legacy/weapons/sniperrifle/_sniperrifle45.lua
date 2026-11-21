local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head45",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.7071067811865476,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head45"
NodeEffects = {}
MinFireSpeed = 23200.0
MaxFireSpeed = 23200.1
EnergyFireCost = 3295.4536563507495
MetalFireCost = 82.38634140876876
ReloadTime = 0.58359375
Projectile = "_sniperrifle45"
FireStdDev =9.809236595121194e-05
FireStdDevAuto =0.00019618473190242388
