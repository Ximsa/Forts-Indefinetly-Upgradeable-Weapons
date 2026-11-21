local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head8",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.0,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head8"
MinFireSpeed = 6400.0
MaxFireSpeed = 8400.0
EnergyFireCost = 8500.0
MetalFireCost = 1700.0
ReloadTime = 84.375
Projectile = "_bigcannonv28"
FireStdDev =0.0076973717734605965
FireStdDevAuto =0.006997610703145996
