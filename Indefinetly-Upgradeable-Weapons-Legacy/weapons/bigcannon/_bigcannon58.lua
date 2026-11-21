local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel58",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.8660254037844386,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel58"
MinFireSpeed = 14400.0
MaxFireSpeed = 15400.1
EnergyFireCost = 33500.0
MetalFireCost = 6700.0
ReloadTime = 21.875
Projectile = "_bigcannon58"
FireStdDev =4.37136374464031e-05
FireStdDevAuto =2.185681872320155e-05
