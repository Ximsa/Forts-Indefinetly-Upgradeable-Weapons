local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head10",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.0,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head10"
NodeEffects = {}
MinFireSpeed = 12700.0
MaxFireSpeed = 12700.1
EnergyFireCost = 843.2366924650197
MetalFireCost = 21.080917311625495
ReloadTime = 0.8296875
Projectile = "_sniperrifle10"
FireStdDev =0.0027566345194211497
FireStdDevAuto =0.0055132690388422995
