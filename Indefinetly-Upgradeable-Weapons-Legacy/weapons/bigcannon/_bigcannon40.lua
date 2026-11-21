local tmp = path
path = path .. "/../1557699803"
dofile( path .. "/weapons/bigcannon.lua")
path = tmp
Sprites = {}
Sprites={{Name = "bigcannonbarrel40",States={Normal={Frames={{texture= path .. "/../1557699803".."/weapons/bigcannon/barrel.tga",colour={0.7071067811865476,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="bigcannonbarrel40"
MinFireSpeed = 10800.0
MaxFireSpeed = 11800.1
EnergyFireCost = 24500.0
MetalFireCost = 4900.0
ReloadTime = 27.5
Projectile = "_bigcannon40"
FireStdDev =0.00024304420967397926
FireStdDevAuto =0.00012152210483698963
