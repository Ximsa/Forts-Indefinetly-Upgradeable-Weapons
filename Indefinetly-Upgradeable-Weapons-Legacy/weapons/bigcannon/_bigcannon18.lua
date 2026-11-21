local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel18",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.5,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel18"
MinFireSpeed = 6400.0
MaxFireSpeed = 7400.1
EnergyFireCost = 13500.0
MetalFireCost = 2700.0
ReloadTime = 34.375
Projectile = "_bigcannon18"
FireStdDev =0.00197844668900135
FireStdDevAuto =0.000989223344500675
