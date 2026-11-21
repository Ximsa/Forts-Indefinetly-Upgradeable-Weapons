local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel49",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.8660254037844386,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel49"
MinFireSpeed = 12600.0
MaxFireSpeed = 13600.1
EnergyFireCost = 29000.0
MetalFireCost = 5800.0
ReloadTime = 24.6875
Projectile = "_bigcannon49"
FireStdDev =0.00010307447048195738
FireStdDevAuto =5.153723524097869e-05
