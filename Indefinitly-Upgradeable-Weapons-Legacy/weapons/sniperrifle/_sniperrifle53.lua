local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head53",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.8660254037844386,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head53"
NodeEffects = {}
MinFireSpeed = 25600.0
MaxFireSpeed = 25600.1
EnergyFireCost = 4068.688477113126
MetalFireCost = 101.71721192782816
ReloadTime = 0.52734375
Projectile = "_sniperrifle53"
FireStdDev =4.576081265847431e-05
FireStdDevAuto =9.152162531694862e-05
