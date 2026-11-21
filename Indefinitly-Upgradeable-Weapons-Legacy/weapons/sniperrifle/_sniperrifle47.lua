local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head47",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.7071067811865476,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head47"
NodeEffects = {}
MinFireSpeed = 23800.0
MaxFireSpeed = 23800.1
EnergyFireCost = 3479.866137227031
MetalFireCost = 86.99665343067579
ReloadTime = 0.56953125
Projectile = "_sniperrifle47"
FireStdDev =8.106807103405944e-05
FireStdDevAuto =0.0001621361420681189
