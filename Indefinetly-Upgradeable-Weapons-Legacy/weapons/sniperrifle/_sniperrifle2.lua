local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head2",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.0,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head2"
NodeEffects = {}
MinFireSpeed = 10300.0
MaxFireSpeed = 10300.1
EnergyFireCost = 446.25
MetalFireCost = 11.15625
ReloadTime = 0.8859375
Projectile = "_sniperrifle2"
FireStdDev =0.005909090909090908
FireStdDevAuto =0.011818181818181816
