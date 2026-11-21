local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head9",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.0,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head9"
NodeEffects = {}
MinFireSpeed = 1097.6913855000003
MaxFireSpeed = 6630.0
EnergyFireCost = 1581.7584097772697
MetalFireCost = 39.543960244431744
ReloadTime = 9.296875
Projectile = "_mortar29"
FireStdDevAuto =0.000516560652
