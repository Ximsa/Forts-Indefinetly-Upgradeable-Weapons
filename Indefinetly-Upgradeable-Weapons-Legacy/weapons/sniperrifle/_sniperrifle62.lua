local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head62",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.8660254037844386,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head62"
NodeEffects = {}
MinFireSpeed = 28300.0
MaxFireSpeed = 28300.1
EnergyFireCost = 5061.28238115928
MetalFireCost = 126.53205952898196
ReloadTime = 0.4640625
Projectile = "_sniperrifle62"
FireStdDev =1.9407051663248402e-05
FireStdDevAuto =3.8814103326496805e-05
