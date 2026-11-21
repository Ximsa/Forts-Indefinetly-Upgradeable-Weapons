local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel63",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.8660254037844386,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel63"
MinFireSpeed = 15400.0
MaxFireSpeed = 16400.1
EnergyFireCost = 36000.0
MetalFireCost = 7200.0
ReloadTime = 20.3125
Projectile = "_bigcannon63"
FireStdDev =2.7142729598948835e-05
FireStdDevAuto =1.3571364799474417e-05
