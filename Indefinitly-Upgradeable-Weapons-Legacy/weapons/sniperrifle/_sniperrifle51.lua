local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head51",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.8660254037844386,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head51"
NodeEffects = {}
MinFireSpeed = 25000.0
MaxFireSpeed = 25000.1
EnergyFireCost = 3866.2977520131035
MetalFireCost = 96.65744380032761
ReloadTime = 0.5414062500000001
Projectile = "_sniperrifle51"
FireStdDev =5.537058331675393e-05
FireStdDevAuto =0.00011074116663350786
