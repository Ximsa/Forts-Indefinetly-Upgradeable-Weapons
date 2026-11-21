local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head26",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.5,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head26"
NodeEffects = {}
MinFireSpeed = 17500.0
MaxFireSpeed = 17500.1
EnergyFireCost = 1801.403598150346
MetalFireCost = 45.03508995375866
ReloadTime = 0.7171875
Projectile = "_sniperrifle26"
FireStdDev =0.0005999239881509161
FireStdDevAuto =0.0011998479763018321
