local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel61",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.8660254037844386,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel61"
MinFireSpeed = 15000.0
MaxFireSpeed = 16000.1
EnergyFireCost = 35000.0
MetalFireCost = 7000.0
ReloadTime = 20.9375
Projectile = "_bigcannon61"
FireStdDev =3.2842702814728095e-05
FireStdDevAuto =1.6421351407364048e-05
