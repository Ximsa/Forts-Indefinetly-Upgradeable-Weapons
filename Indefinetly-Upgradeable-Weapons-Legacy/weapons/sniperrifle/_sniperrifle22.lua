local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head22",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.5,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head22"
NodeEffects = {}
MinFireSpeed = 16300.0
MaxFireSpeed = 16300.1
EnergyFireCost = 1539.13995892836
MetalFireCost = 38.47849897320901
ReloadTime = 0.7453125
Projectile = "_sniperrifle22"
FireStdDev =0.0008783487110517566
FireStdDevAuto =0.0017566974221035132
