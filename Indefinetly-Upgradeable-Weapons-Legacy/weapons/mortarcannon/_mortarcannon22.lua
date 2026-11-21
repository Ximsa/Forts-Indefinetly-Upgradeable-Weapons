local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head22",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.5,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head22"
NodeEffects = {}
MinFireSpeed = 279.0184222853567
MaxFireSpeed = 9685.0
EnergyFireCost = 3078.27991785672
MetalFireCost = 76.95699794641801
ReloadTime = 8.28125
Projectile = "_mortar222"
FireStdDevAuto =0.00013130278695781488
