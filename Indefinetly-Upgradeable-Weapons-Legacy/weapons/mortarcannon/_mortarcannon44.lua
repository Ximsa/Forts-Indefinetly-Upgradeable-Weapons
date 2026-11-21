local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head44",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.7071067811865476,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head44"
NodeEffects = {}
MinFireSpeed = 27.47692234397986
MaxFireSpeed = 14855.0
EnergyFireCost = 6410.739507890707
MetalFireCost = 160.26848769726772
ReloadTime = 6.5625
Projectile = "_mortar244"
FireStdDevAuto =1.2930316397166997e-05
