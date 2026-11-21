local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head43",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.7071067811865476,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head43"
NodeEffects = {}
MinFireSpeed = 30.52991371553318
MaxFireSpeed = 14620.0
EnergyFireCost = 6233.343515461619
MetalFireCost = 155.83358788654053
ReloadTime = 6.640625
Projectile = "_mortar243"
FireStdDevAuto =1.436701821907444e-05
