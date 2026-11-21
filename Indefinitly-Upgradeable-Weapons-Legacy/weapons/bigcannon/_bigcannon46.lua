local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel46",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.7071067811865476,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel46"
MinFireSpeed = 12000.0
MaxFireSpeed = 13000.1
EnergyFireCost = 27500.0
MetalFireCost = 5500.0
ReloadTime = 25.625
Projectile = "_bigcannon46"
FireStdDev =0.0001371921202114853
FireStdDevAuto =6.859606010574265e-05
