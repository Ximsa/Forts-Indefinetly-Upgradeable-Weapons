local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head41",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.7071067811865476,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head41"
NodeEffects = {}
MinFireSpeed = 37.69125150065825
MaxFireSpeed = 14150.0
EnergyFireCost = 5886.697050729182
MetalFireCost = 147.16742626822958
ReloadTime = 6.796875
Projectile = "_mortar241"
FireStdDevAuto =1.7737059529721528e-05
