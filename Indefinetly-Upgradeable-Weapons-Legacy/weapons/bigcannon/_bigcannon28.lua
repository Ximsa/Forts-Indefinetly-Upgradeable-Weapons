local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel28",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.5,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel28"
MinFireSpeed = 8400.0
MaxFireSpeed = 9400.1
EnergyFireCost = 18500.0
MetalFireCost = 3700.0
ReloadTime = 31.25
Projectile = "_bigcannon28"
FireStdDev =0.0007627768444385457
FireStdDevAuto =0.00038138842221927286
