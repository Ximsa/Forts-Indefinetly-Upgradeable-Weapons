local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head47",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.7071067811865476,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head47"
NodeEffects = {}
MinFireSpeed = 20.03067638876132
MaxFireSpeed = 15560.0
EnergyFireCost = 6959.732274454062
MetalFireCost = 173.99330686135158
ReloadTime = 6.328125
Projectile = "_mortar247"
FireStdDevAuto =9.426200653534741e-06
