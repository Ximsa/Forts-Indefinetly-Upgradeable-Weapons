local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel12",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.0,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel12"
MinFireSpeed = 5200.0
MaxFireSpeed = 6200.1
EnergyFireCost = 10500.0
MetalFireCost = 2100.0
ReloadTime = 36.25
Projectile = "_bigcannon12"
FireStdDev =0.003504938994813922
FireStdDevAuto =0.001752469497406961
