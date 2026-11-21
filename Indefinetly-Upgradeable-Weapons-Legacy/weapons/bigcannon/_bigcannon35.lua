local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel35",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.7071067811865476,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel35"
MinFireSpeed = 9800.0
MaxFireSpeed = 10800.1
EnergyFireCost = 22000.0
MetalFireCost = 4400.0
ReloadTime = 29.0625
Projectile = "_bigcannon35"
FireStdDev =0.00039142513012204046
FireStdDevAuto =0.00019571256506102023
