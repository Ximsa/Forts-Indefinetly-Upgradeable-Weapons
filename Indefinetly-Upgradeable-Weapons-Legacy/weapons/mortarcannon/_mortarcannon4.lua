local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head4",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.0,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head4"
NodeEffects = {}
MinFireSpeed = 1858.95
MaxFireSpeed = 5455.0
EnergyFireCost = 1081.8585205078125
MetalFireCost = 27.046463012695312
ReloadTime = 9.6875
Projectile = "_mortar24"
FireStdDevAuto =0.0008748
