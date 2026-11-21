local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head59",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.8660254037844386,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head59"
NodeEffects = {}
MinFireSpeed = 27400.0
MaxFireSpeed = 27400.1
EnergyFireCost = 4714.914696501113
MetalFireCost = 117.87286741252781
ReloadTime = 0.48515625
Projectile = "_sniperrifle59"
FireStdDev =2.583078576378363e-05
FireStdDevAuto =5.166157152756726e-05
