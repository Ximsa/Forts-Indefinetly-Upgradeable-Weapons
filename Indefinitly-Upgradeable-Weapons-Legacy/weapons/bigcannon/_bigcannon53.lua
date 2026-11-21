local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel53",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.8660254037844386,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel53"
MinFireSpeed = 13400.0
MaxFireSpeed = 14400.1
EnergyFireCost = 31000.0
MetalFireCost = 6200.0
ReloadTime = 23.4375
Projectile = "_bigcannon53"
FireStdDev =7.040125024380668e-05
FireStdDevAuto =3.520062512190334e-05
