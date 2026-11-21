local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head50",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.8660254037844386,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head50"
NodeEffects = {}
MinFireSpeed = 24700.0
MaxFireSpeed = 24700.1
EnergyFireCost = 3767.4316327513634
MetalFireCost = 94.18579081878411
ReloadTime = 0.5484375
Projectile = "_sniperrifle50"
FireStdDev =6.090764164842933e-05
FireStdDevAuto =0.00012181528329685865
