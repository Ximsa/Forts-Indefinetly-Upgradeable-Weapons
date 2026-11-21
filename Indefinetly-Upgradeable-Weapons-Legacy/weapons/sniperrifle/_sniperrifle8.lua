local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head8",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.0,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head8"
NodeEffects = {}
MinFireSpeed = 12100.0
MaxFireSpeed = 12100.1
EnergyFireCost = 739.3272171211174
MetalFireCost = 18.483180428027936
ReloadTime = 0.84375
Projectile = "_sniperrifle8"
FireStdDev =0.0033355277684995917
FireStdDevAuto =0.006671055536999183
