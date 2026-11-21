local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head38",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.7071067811865476,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head38"
NodeEffects = {}
MinFireSpeed = 21100.0
MaxFireSpeed = 21100.1
EnergyFireCost = 2693.2354877858
MetalFireCost = 67.33088719464502
ReloadTime = 0.6328125
Projectile = "_sniperrifle38"
FireStdDev =0.0001911542709085846
FireStdDevAuto =0.0003823085418171692
