local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head35",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.7071067811865476,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head35"
NodeEffects = {}
MinFireSpeed = 70.9227393081419
MaxFireSpeed = 12740.0
EnergyFireCost = 4908.978889104203
MetalFireCost = 122.72447222760509
ReloadTime = 7.265625
Projectile = "_mortar235"
FireStdDevAuto =3.337540673324325e-05
