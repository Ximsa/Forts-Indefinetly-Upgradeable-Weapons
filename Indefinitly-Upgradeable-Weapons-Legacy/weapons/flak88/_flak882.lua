local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel2",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.0,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel2"
NodeEffects = {}
MinFireSpeed = 8400.0
MaxFireSpeed = 8400.1
EnergyFireCost = 1729.21875
MetalFireCost = 44.625
ReloadTime = 5.4140625
Projectile = "_cannon88he2"
FireStdDev =0.004545454545454545
FireStdDevAuto =0.004545454545454545
