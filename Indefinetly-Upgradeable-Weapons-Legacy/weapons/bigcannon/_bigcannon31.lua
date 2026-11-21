local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel31",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.5,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel31"
MinFireSpeed = 9000.0
MaxFireSpeed = 10000.1
EnergyFireCost = 20000.0
MetalFireCost = 4000.0
ReloadTime = 30.3125
Projectile = "_bigcannon31"
FireStdDev =0.0005730855330116796
FireStdDevAuto =0.0002865427665058398
