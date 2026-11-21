local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel6",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.0,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel6"
MinFireSpeed = 4000.0
MaxFireSpeed = 5000.1
EnergyFireCost = 7500.0
MetalFireCost = 1500.0
ReloadTime = 38.125
Projectile = "_bigcannon6"
FireStdDev =0.006209213230591549
FireStdDevAuto =0.0031046066152957746
