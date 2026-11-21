local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel64",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.0,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel64"
MinFireSpeed = 15600.0
MaxFireSpeed = 16600.1
EnergyFireCost = 36500.0
MetalFireCost = 7300.0
ReloadTime = 20.0
Projectile = "_bigcannon64"
FireStdDev =2.467520872631712e-05
FireStdDevAuto =1.233760436315856e-05
