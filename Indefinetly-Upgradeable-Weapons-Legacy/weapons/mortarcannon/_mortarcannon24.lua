local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head24",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.5,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head24"
NodeEffects = {}
MinFireSpeed = 226.00492205113892
MaxFireSpeed = 10155.0
EnergyFireCost = 3336.477698472813
MetalFireCost = 83.41194246182033
ReloadTime = 8.125
Projectile = "_mortar224"
FireStdDevAuto =0.00010635525743583005
