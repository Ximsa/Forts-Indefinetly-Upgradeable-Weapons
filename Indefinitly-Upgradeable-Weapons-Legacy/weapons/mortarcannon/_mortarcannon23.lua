local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head23",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.5,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head23"
NodeEffects = {}
MinFireSpeed = 251.11658005682102
MaxFireSpeed = 9920.0
EnergyFireCost = 3206.3780415732313
MetalFireCost = 80.15945103933079
ReloadTime = 8.203125
Projectile = "_mortar223"
FireStdDevAuto =0.00011817250826203339
