local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel26",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.5,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel26"
MinFireSpeed = 8000.0
MaxFireSpeed = 9000.1
EnergyFireCost = 17500.0
MetalFireCost = 3500.0
ReloadTime = 31.875
Projectile = "_bigcannon26"
FireStdDev =0.0009229599817706405
FireStdDevAuto =0.00046147999088532024
