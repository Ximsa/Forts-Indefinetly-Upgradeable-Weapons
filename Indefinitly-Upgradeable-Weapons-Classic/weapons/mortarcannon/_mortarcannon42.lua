local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head42",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.7071067811865476,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head42"
NodeEffects = {}
MinFireSpeed = 33.92212635059242
MaxFireSpeed = 14385.0
EnergyFireCost = 6058.676692146825
MetalFireCost = 151.46691730367067
ReloadTime = 6.71875
Projectile = "_mortar242"
FireStdDevAuto =1.5963353576749377e-05
