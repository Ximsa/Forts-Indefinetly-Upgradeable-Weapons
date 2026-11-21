local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel42",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel42"
NodeEffects = {}
MinFireSpeed = 18300.0
MaxFireSpeed = 18300.1
EnergyFireCost = 22720.037595550602
MetalFireCost = 568.0009398887648
ReloadTime = 17.46875
Projectile = "_hellfirecannon42"
FireStdDev =0.0002008629832016357
FireStdDevAuto =0.00024103557984196281
