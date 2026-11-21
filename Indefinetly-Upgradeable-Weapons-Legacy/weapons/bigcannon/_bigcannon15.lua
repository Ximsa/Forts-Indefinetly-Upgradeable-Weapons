local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel15",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.0,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel15"
MinFireSpeed = 5800.0
MaxFireSpeed = 6800.1
EnergyFireCost = 12000.0
MetalFireCost = 2400.0
ReloadTime = 35.3125
Projectile = "_bigcannon15"
FireStdDev =0.0026333125430607974
FireStdDevAuto =0.0013166562715303987
