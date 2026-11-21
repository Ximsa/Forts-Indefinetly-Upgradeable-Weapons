local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head21",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.5,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head21"
NodeEffects = {}
MinFireSpeed = 16000.0
MaxFireSpeed = 16000.1
EnergyFireCost = 1476.076267252539
MetalFireCost = 36.901906681313484
ReloadTime = 0.75234375
Projectile = "_sniperrifle21"
FireStdDev =0.0009661835821569323
FireStdDevAuto =0.0019323671643138645
