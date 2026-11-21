local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head56",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.8660254037844386,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head56"
NodeEffects = {}
MinFireSpeed = 7.7602944415346675
MaxFireSpeed = 17675.0
EnergyFireCost = 8768.577064721623
MetalFireCost = 219.21442661804053
ReloadTime = 5.625
Projectile = "_mortar256"
FireStdDevAuto =3.6519032666045506e-06
