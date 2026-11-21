local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head29",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.5,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head29"
NodeEffects = {}
MinFireSpeed = 18400.0
MaxFireSpeed = 18400.1
EnergyFireCost = 2009.0554166490126
MetalFireCost = 50.22638541622533
ReloadTime = 0.69609375
Projectile = "_sniperrifle29"
FireStdDev =0.00045073177171368585
FireStdDevAuto =0.0009014635434273717
