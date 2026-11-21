local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel44",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.7071067811865476,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel44"
NodeEffects = {}
MinFireSpeed = 25200.0
MaxFireSpeed = 25200.1
EnergyFireCost = 12420.807796538247
MetalFireCost = 320.53697539453543
ReloadTime = 3.609375
Projectile = "_cannon88he44"
FireStdDev =8.300123272794862e-05
FireStdDevAuto =8.300123272794862e-05
