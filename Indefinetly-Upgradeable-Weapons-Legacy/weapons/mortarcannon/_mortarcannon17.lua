local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head17",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.5,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head17"
NodeEffects = {}
MinFireSpeed = 472.52014815721964
MaxFireSpeed = 8510.0
EnergyFireCost = 2466.750976861547
MetalFireCost = 61.66877442153868
ReloadTime = 8.671875
Projectile = "_mortar217"
FireStdDevAuto =0.00022236242266222096
