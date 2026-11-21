local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel62",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.8660254037844386,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel62"
MinFireSpeed = 15200.0
MaxFireSpeed = 16200.1
EnergyFireCost = 35500.0
MetalFireCost = 7100.0
ReloadTime = 20.625
Projectile = "_bigcannon62"
FireStdDev =2.985700255884372e-05
FireStdDevAuto =1.492850127942186e-05
