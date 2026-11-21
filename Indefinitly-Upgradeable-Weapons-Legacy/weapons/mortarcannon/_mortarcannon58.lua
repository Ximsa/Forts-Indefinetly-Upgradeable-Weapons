local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head58",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.8660254037844386,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head58"
NodeEffects = {}
MinFireSpeed = 6.2858384976430814
MaxFireSpeed = 18145.0
EnergyFireCost = 9205.985863879116
MetalFireCost = 230.14964659697785
ReloadTime = 5.46875
Projectile = "_mortar258"
FireStdDevAuto =2.9580416459496862e-06
