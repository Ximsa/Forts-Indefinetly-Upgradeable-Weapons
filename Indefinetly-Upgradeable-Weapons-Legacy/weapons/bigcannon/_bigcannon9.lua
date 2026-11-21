local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel9",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.0,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel9"
MinFireSpeed = 4600.0
MaxFireSpeed = 5600.1
EnergyFireCost = 9000.0
MetalFireCost = 1800.0
ReloadTime = 37.1875
Projectile = "_bigcannon9"
FireStdDev =0.004665073802097332
FireStdDevAuto =0.002332536901048666
