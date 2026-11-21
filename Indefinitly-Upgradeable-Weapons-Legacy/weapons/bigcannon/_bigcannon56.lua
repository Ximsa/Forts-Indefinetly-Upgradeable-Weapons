local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel56",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.8660254037844386,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel56"
MinFireSpeed = 14000.0
MaxFireSpeed = 15000.1
EnergyFireCost = 32500.0
MetalFireCost = 6500.0
ReloadTime = 22.5
Projectile = "_bigcannon56"
FireStdDev =5.289350131014776e-05
FireStdDevAuto =2.644675065507388e-05
