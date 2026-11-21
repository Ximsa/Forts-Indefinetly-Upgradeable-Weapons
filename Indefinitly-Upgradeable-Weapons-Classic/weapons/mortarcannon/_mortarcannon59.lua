local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head59",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.8660254037844386,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head59"
NodeEffects = {}
MinFireSpeed = 5.657254647878774
MaxFireSpeed = 18380.0
EnergyFireCost = 9429.829393002226
MetalFireCost = 235.74573482505562
ReloadTime = 5.390625
Projectile = "_mortar259"
FireStdDevAuto =2.6622374813547175e-06
