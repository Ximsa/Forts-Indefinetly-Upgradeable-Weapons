local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head62",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.8660254037844386,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head62"
NodeEffects = {}
MinFireSpeed = 4.124138638303626
MaxFireSpeed = 19085.0
EnergyFireCost = 10122.56476231856
MetalFireCost = 253.06411905796392
ReloadTime = 5.15625
Projectile = "_mortar262"
FireStdDevAuto =1.940771123907589e-06
