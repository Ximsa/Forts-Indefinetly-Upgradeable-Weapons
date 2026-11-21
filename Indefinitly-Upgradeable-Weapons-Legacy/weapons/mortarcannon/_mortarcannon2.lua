local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head2",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.0,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head2"
NodeEffects = {}
MinFireSpeed = 2295.0
MaxFireSpeed = 4985.0
EnergyFireCost = 892.5
MetalFireCost = 22.3125
ReloadTime = 9.84375
Projectile = "_mortar22"
FireStdDevAuto =0.00108
