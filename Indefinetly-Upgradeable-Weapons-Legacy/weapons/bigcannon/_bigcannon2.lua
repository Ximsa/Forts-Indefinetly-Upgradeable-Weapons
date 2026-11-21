local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel2",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.0,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel2"
MinFireSpeed = 3200.0
MaxFireSpeed = 4200.1
EnergyFireCost = 5500.0
MetalFireCost = 1100.0
ReloadTime = 39.375
Projectile = "_bigcannon2"
FireStdDev =0.00909090909090909
FireStdDevAuto =0.004545454545454545
