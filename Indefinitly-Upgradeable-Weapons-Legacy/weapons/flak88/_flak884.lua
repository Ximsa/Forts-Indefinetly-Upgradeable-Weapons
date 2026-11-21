local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel4",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.0,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel4"
NodeEffects = {}
MinFireSpeed = 9200.0
MaxFireSpeed = 9200.1
EnergyFireCost = 2096.1008834838867
MetalFireCost = 54.092926025390625
ReloadTime = 5.328125
Projectile = "_cannon88he4"
FireStdDev =0.003756574004507888
FireStdDevAuto =0.003756574004507888
