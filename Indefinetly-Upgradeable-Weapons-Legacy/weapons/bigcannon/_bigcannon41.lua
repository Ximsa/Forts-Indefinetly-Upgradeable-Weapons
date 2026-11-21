local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel41",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel41"
MinFireSpeed = 11000.0
MaxFireSpeed = 12000.1
EnergyFireCost = 25000.0
MetalFireCost = 5000.0
ReloadTime = 27.1875
Projectile = "_bigcannon41"
FireStdDev =0.0002209492815217993
FireStdDevAuto =0.00011047464076089965
