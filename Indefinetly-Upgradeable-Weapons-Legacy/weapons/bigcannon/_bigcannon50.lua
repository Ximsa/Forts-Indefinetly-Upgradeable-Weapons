local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel50",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.8660254037844386,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel50"
MinFireSpeed = 12800.0
MaxFireSpeed = 13800.1
EnergyFireCost = 29500.0
MetalFireCost = 5900.0
ReloadTime = 24.375
Projectile = "_bigcannon50"
FireStdDev =9.370406407450671e-05
FireStdDevAuto =4.6852032037253355e-05
