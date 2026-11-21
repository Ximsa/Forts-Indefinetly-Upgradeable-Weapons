local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head53",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.8660254037844386,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head53"
NodeEffects = {}
MinFireSpeed = 10.645122690719708
MaxFireSpeed = 16970.0
EnergyFireCost = 8137.376954226252
MetalFireCost = 203.43442385565632
ReloadTime = 5.859375
Projectile = "_mortar253"
FireStdDevAuto =5.009469501515158e-06
