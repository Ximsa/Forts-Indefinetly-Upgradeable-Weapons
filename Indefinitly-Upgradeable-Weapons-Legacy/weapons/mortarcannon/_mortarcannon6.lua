local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head6",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.0,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head6"
NodeEffects = {}
MinFireSpeed = 1505.7495000000001
MaxFireSpeed = 5925.0
EnergyFireCost = 1277.18072488904
MetalFireCost = 31.929518122226
ReloadTime = 9.53125
Projectile = "_mortar26"
FireStdDevAuto =0.000708588
