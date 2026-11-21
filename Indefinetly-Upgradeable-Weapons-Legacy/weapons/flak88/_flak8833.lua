local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel33",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.7071067811865476,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel33"
NodeEffects = {}
MinFireSpeed = 20800.0
MaxFireSpeed = 20800.1
EnergyFireCost = 8917.86425181798
MetalFireCost = 230.13843230498009
ReloadTime = 4.08203125
Projectile = "_cannon88he33"
FireStdDev =0.00023681220372383452
FireStdDevAuto =0.00023681220372383452
