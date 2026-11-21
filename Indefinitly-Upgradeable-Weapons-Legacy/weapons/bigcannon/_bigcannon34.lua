local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel34",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.7071067811865476,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel34"
MinFireSpeed = 9600.0
MaxFireSpeed = 10600.1
EnergyFireCost = 21500.0
MetalFireCost = 4300.0
ReloadTime = 29.375
Projectile = "_bigcannon34"
FireStdDev =0.00043056764313424456
FireStdDevAuto =0.00021528382156712228
