local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head18",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.5,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head18"
NodeEffects = {}
MinFireSpeed = 425.2681333414977
MaxFireSpeed = 8745.0
EnergyFireCost = 2585.2939608750085
MetalFireCost = 64.63234902187521
ReloadTime = 8.59375
Projectile = "_mortar218"
FireStdDevAuto =0.00020012618039599888
