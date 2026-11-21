local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel34",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.7071067811865476,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel34"
NodeEffects = {}
MinFireSpeed = 21200.0
MaxFireSpeed = 21200.1
EnergyFireCost = 9212.205880752635
MetalFireCost = 237.7343453097454
ReloadTime = 4.0390625
Projectile = "_cannon88he34"
FireStdDev =0.00021528382156712228
FireStdDevAuto =0.00021528382156712228
