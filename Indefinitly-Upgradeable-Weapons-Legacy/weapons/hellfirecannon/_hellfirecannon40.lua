local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel40",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel40"
NodeEffects = {}
MinFireSpeed = 17700.0
MaxFireSpeed = 17700.1
EnergyFireCost = 21440.112187307754
MetalFireCost = 536.0028046826937
ReloadTime = 17.875
Projectile = "_hellfirecannon40"
FireStdDev =0.00024304420967397926
FireStdDevAuto =0.0002916530516087751
