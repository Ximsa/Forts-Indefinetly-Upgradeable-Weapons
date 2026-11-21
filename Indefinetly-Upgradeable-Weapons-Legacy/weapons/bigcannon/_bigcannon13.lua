local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel13",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.0,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel13"
MinFireSpeed = 5400.0
MaxFireSpeed = 6400.1
EnergyFireCost = 11000.0
MetalFireCost = 2200.0
ReloadTime = 35.9375
Projectile = "_bigcannon13"
FireStdDev =0.0031863081771035654
FireStdDevAuto =0.0015931540885517827
