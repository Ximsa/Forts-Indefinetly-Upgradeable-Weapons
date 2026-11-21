local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head19",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.5,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head19"
NodeEffects = {}
MinFireSpeed = 15400.0
MaxFireSpeed = 15400.1
EnergyFireCost = 1352.8445895068403
MetalFireCost = 33.82111473767101
ReloadTime = 0.76640625
Projectile = "_sniperrifle19"
FireStdDev =0.0011690821344098883
FireStdDevAuto =0.0023381642688197765
