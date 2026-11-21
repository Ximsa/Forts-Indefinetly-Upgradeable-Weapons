local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel23",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.5,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel23"
MinFireSpeed = 7400.0
MaxFireSpeed = 8400.1
EnergyFireCost = 16000.0
MetalFireCost = 3200.0
ReloadTime = 32.8125
Projectile = "_bigcannon23"
FireStdDev =0.0012284597357367227
FireStdDevAuto =0.0006142298678683614
