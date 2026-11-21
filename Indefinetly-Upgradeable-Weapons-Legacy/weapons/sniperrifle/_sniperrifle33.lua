local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head33",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.7071067811865476,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head33"
NodeEffects = {}
MinFireSpeed = 19600.0
MaxFireSpeed = 19600.1
EnergyFireCost = 2301.3843230498005
MetalFireCost = 57.53460807624502
ReloadTime = 0.66796875
Projectile = "_sniperrifle33"
FireStdDev =0.0003078558648409847
FireStdDevAuto =0.0006157117296819694
