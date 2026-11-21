local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head25",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.5,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head25"
NodeEffects = {}
MinFireSpeed = 203.40442984602504
MaxFireSpeed = 10390.0
EnergyFireCost = 3468.6101625114507
MetalFireCost = 86.71525406278627
ReloadTime = 8.046875
Projectile = "_mortar225"
FireStdDevAuto =9.571973169224704e-05
