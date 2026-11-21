local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head61",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.8660254037844386,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head61"
NodeEffects = {}
MinFireSpeed = 28000.0
MaxFireSpeed = 28000.1
EnergyFireCost = 4944.031882987599
MetalFireCost = 123.60079707468994
ReloadTime = 0.47109375000000003
Projectile = "_sniperrifle61"
FireStdDev =2.1347756829573246e-05
FireStdDevAuto =4.269551365914649e-05
