local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel8",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.0,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel8"
MinFireSpeed = 4400.0
MaxFireSpeed = 5400.1
EnergyFireCost = 8500.0
MetalFireCost = 1700.0
ReloadTime = 37.5
Projectile = "_bigcannon8"
FireStdDev =0.005131581182307065
FireStdDevAuto =0.0025657905911535325
