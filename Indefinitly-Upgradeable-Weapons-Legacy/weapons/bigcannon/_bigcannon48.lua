local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel48",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.8660254037844386,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel48"
MinFireSpeed = 12400.0
MaxFireSpeed = 13400.1
EnergyFireCost = 28500.0
MetalFireCost = 5700.0
ReloadTime = 25.0
Projectile = "_bigcannon48"
FireStdDev =0.00011338191753015314
FireStdDevAuto =5.669095876507657e-05
