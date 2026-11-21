local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head26",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.5,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head26"
NodeEffects = {}
MinFireSpeed = 183.06398686142253
MaxFireSpeed = 10625.0
EnergyFireCost = 3602.807196300692
MetalFireCost = 90.07017990751731
ReloadTime = 7.96875
Projectile = "_mortar226"
FireStdDevAuto =8.614775852302235e-05
