local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head13",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.0,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head13"
NodeEffects = {}
MinFireSpeed = 13600.0
MaxFireSpeed = 13600.1
EnergyFireCost = 1005.2689997413866
MetalFireCost = 25.131724993534664
ReloadTime = 0.80859375
Projectile = "_sniperrifle13"
FireStdDev =0.0020711003151173174
FireStdDevAuto =0.004142200630234635
