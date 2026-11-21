local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel57",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.8660254037844386,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel57"
MinFireSpeed = 14200.0
MaxFireSpeed = 15200.1
EnergyFireCost = 33000.0
MetalFireCost = 6600.0
ReloadTime = 22.1875
Projectile = "_bigcannon57"
FireStdDev =4.8085001191043417e-05
FireStdDevAuto =2.4042500595521708e-05
