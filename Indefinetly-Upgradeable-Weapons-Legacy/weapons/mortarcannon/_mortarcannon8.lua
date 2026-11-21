local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head8",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.0,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head8"
NodeEffects = {}
MinFireSpeed = 1219.6570950000003
MaxFireSpeed = 6395.0
EnergyFireCost = 1478.6544342422349
MetalFireCost = 36.96636085605587
ReloadTime = 9.375
Projectile = "_mortar28"
FireStdDevAuto =0.00057395628
