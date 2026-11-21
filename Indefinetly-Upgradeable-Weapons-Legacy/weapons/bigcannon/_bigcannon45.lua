local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel45",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.7071067811865476,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel45"
MinFireSpeed = 11800.0
MaxFireSpeed = 12800.1
EnergyFireCost = 27000.0
MetalFireCost = 5400.0
ReloadTime = 25.9375
Projectile = "_bigcannon45"
FireStdDev =0.00015091133223263384
FireStdDevAuto =7.545566611631692e-05
