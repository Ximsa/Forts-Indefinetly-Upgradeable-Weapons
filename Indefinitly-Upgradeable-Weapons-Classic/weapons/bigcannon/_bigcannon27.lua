local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel27",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.5,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel27"
MinFireSpeed = 8200.0
MaxFireSpeed = 9200.1
EnergyFireCost = 18000.0
MetalFireCost = 3600.0
ReloadTime = 31.5625
Projectile = "_bigcannon27"
FireStdDev =0.0008390545288824003
FireStdDevAuto =0.00041952726444120016
