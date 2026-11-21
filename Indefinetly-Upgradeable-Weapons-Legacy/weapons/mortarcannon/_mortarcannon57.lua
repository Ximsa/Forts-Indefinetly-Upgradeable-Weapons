local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head57",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.8660254037844386,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head57"
NodeEffects = {}
MinFireSpeed = 6.984264997381201
MaxFireSpeed = 17910.0
EnergyFireCost = 8985.586081357898
MetalFireCost = 224.6396520339474
ReloadTime = 5.546875
Projectile = "_mortar257"
FireStdDevAuto =3.2867129399440956e-06
