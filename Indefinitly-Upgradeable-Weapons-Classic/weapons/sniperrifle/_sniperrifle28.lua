local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head28",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.5,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head28"
NodeEffects = {}
MinFireSpeed = 18100.0
MaxFireSpeed = 18100.1
EnergyFireCost = 1938.762256392874
MetalFireCost = 48.46905640982186
ReloadTime = 0.703125
Projectile = "_sniperrifle28"
FireStdDev =0.0004958049488850545
FireStdDevAuto =0.000991609897770109
