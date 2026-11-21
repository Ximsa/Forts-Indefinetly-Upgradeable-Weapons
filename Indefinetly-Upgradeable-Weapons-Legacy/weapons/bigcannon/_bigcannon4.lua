local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel4",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.0,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel4"
MinFireSpeed = 3600.0
MaxFireSpeed = 4600.1
EnergyFireCost = 6500.0
MetalFireCost = 1300.0
ReloadTime = 38.75
Projectile = "_bigcannon4"
FireStdDev =0.007513148009015776
FireStdDevAuto =0.003756574004507888
