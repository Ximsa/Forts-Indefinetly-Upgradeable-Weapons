local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head33",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.7071067811865476,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head33"
NodeEffects = {}
MinFireSpeed = 87.55893741745913
MaxFireSpeed = 12270.0
EnergyFireCost = 4602.768646099601
MetalFireCost = 115.06921615249004
ReloadTime = 7.421875
Projectile = "_mortar233"
FireStdDevAuto =4.120420584351018e-05
