local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head50",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.8660254037844386,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head50"
NodeEffects = {}
MinFireSpeed = 14.602363087407005
MaxFireSpeed = 16265.0
EnergyFireCost = 7534.863265502727
MetalFireCost = 188.37158163756823
ReloadTime = 6.09375
Projectile = "_mortar250"
FireStdDevAuto =6.871700276426828e-06
