local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel58",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.8660254037844386,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel58"
NodeEffects = {}
MinFireSpeed = 30800.0
MaxFireSpeed = 30800.1
EnergyFireCost = 17836.597611265777
MetalFireCost = 460.2992931939557
ReloadTime = 3.0078125
Projectile = "_cannon88he58"
FireStdDev =2.185681872320155e-05
FireStdDevAuto =2.185681872320155e-05
