local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head11",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.0,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head11"
NodeEffects = {}
MinFireSpeed = 889.1300222550003
MaxFireSpeed = 7100.0
EnergyFireCost = 1792.8245315695713
MetalFireCost = 44.82061328923928
ReloadTime = 9.140625
Projectile = "_mortar211"
FireStdDevAuto =0.00041841412812
