local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel53",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.8660254037844386,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel53"
NodeEffects = {}
MinFireSpeed = 28800.0
MaxFireSpeed = 28800.1
EnergyFireCost = 15766.16784881336
MetalFireCost = 406.86884771131264
ReloadTime = 3.22265625
Projectile = "_cannon88he53"
FireStdDev =3.520062512190334e-05
FireStdDevAuto =3.520062512190334e-05
