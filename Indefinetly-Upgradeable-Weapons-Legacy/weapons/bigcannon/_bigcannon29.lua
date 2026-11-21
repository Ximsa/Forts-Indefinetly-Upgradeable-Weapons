local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel29",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.5,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel29"
MinFireSpeed = 8600.0
MaxFireSpeed = 9600.1
EnergyFireCost = 19000.0
MetalFireCost = 3800.0
ReloadTime = 30.9375
Projectile = "_bigcannon29"
FireStdDev =0.0006934334949441325
FireStdDevAuto =0.00034671674747206624
