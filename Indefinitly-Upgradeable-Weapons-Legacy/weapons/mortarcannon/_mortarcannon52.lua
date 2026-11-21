local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head52",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.8660254037844386,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head52"
NodeEffects = {}
MinFireSpeed = 11.827914100799674
MaxFireSpeed = 16735.0
EnergyFireCost = 7933.417308776617
MetalFireCost = 198.33543271941545
ReloadTime = 5.9375
Projectile = "_mortar252"
FireStdDevAuto =5.566077223905731e-06
