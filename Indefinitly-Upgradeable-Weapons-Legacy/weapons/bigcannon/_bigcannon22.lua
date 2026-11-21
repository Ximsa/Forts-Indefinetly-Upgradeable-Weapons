local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel22",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.5,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel22"
MinFireSpeed = 7200.0
MaxFireSpeed = 8200.1
EnergyFireCost = 15500.0
MetalFireCost = 3100.0
ReloadTime = 33.125
Projectile = "_bigcannon22"
FireStdDev =0.001351305709310395
FireStdDevAuto =0.0006756528546551975
