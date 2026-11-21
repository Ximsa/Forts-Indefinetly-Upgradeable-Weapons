local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel32",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.7071067811865476,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel32"
MinFireSpeed = 9200.0
MaxFireSpeed = 10200.1
EnergyFireCost = 20500.0
MetalFireCost = 4100.0
ReloadTime = 30.0
Projectile = "_bigcannon32"
FireStdDev =0.000520986848192436
FireStdDevAuto =0.000260493424096218
