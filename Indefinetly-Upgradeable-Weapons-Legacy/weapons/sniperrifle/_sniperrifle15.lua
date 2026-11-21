local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head15",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.0,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head15"
NodeEffects = {}
MinFireSpeed = 14200.0
MaxFireSpeed = 14200.1
EnergyFireCost = 1117.5540829851948
MetalFireCost = 27.93885207462987
ReloadTime = 0.79453125
Projectile = "_sniperrifle15"
FireStdDev =0.0017116531529895182
FireStdDevAuto =0.0034233063059790365
