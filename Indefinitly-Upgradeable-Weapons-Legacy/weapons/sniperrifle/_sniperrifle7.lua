local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head7",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.0,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head7"
NodeEffects = {}
MinFireSpeed = 11800.0
MaxFireSpeed = 11800.1
EnergyFireCost = 688.5683368577156
MetalFireCost = 17.21420842144289
ReloadTime = 0.85078125
Projectile = "_sniperrifle7"
FireStdDev =0.003669080545349551
FireStdDevAuto =0.007338161090699102
