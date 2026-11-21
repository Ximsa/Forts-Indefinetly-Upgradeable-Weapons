local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head36",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.7071067811865476,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head36"
NodeEffects = {}
MinFireSpeed = 63.83046537732771
MaxFireSpeed = 12975.0
EnergyFireCost = 5065.681684246456
MetalFireCost = 126.64204210616143
ReloadTime = 7.1875
Projectile = "_mortar236"
FireStdDevAuto =3.0037866059918924e-05
