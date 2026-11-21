local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel44",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.7071067811865476,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel44"
MinFireSpeed = 11600.0
MaxFireSpeed = 12600.1
EnergyFireCost = 26500.0
MetalFireCost = 5300.0
ReloadTime = 26.25
Projectile = "_bigcannon44"
FireStdDev =0.00016600246545589724
FireStdDevAuto =8.300123272794862e-05
