local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head54",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.8660254037844386,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head54"
NodeEffects = {}
MinFireSpeed = 9.580610421647737
MaxFireSpeed = 17205.0
EnergyFireCost = 8344.523469136038
MetalFireCost = 208.61308672840096
ReloadTime = 5.78125
Projectile = "_mortar254"
FireStdDevAuto =4.5085225513636425e-06
