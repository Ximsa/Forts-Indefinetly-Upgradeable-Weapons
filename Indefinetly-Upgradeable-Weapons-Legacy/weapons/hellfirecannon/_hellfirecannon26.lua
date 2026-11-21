local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/hellfirecannon.lua")
path = tmp
Sprites={{Name = "hellfirecannon-barrel26",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/hellfirecannon/barrel.tga",colour={0.5,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="hellfirecannon-barrel26"
NodeEffects = {}
MinFireSpeed = 13500.0
MaxFireSpeed = 13500.1
EnergyFireCost = 13510.526986127597
MetalFireCost = 337.7631746531899
ReloadTime = 20.71875
Projectile = "_hellfirecannon26"
FireStdDev =0.0009229599817706405
FireStdDevAuto =0.0011075519781247685
