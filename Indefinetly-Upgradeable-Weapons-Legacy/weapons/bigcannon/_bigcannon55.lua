local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel55",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.8660254037844386,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel55"
MinFireSpeed = 13800.0
MaxFireSpeed = 14800.1
EnergyFireCost = 32000.0
MetalFireCost = 6400.0
ReloadTime = 22.8125
Projectile = "_bigcannon55"
FireStdDev =5.818285144116254e-05
FireStdDevAuto =2.909142572058127e-05
