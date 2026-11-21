local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel51",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.8660254037844386,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel51"
MinFireSpeed = 13000.0
MaxFireSpeed = 14000.1
EnergyFireCost = 30000.0
MetalFireCost = 6000.0
ReloadTime = 24.0625
Projectile = "_bigcannon51"
FireStdDev =8.518551279500609e-05
FireStdDevAuto =4.2592756397503044e-05
