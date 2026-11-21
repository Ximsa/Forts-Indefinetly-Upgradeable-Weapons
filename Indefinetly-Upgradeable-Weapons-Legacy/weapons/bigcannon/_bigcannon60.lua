local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel60",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.8660254037844386,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel60"
MinFireSpeed = 14800.0
MaxFireSpeed = 15800.1
EnergyFireCost = 34500.0
MetalFireCost = 6900.0
ReloadTime = 21.25
Projectile = "_bigcannon60"
FireStdDev =3.612697309620091e-05
FireStdDevAuto =1.8063486548100454e-05
