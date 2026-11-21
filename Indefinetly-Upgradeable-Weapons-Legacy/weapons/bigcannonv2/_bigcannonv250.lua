local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head50",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.8660254037844386,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head50"
MinFireSpeed = 14800.0
MaxFireSpeed = 16800.0
EnergyFireCost = 29500.0
MetalFireCost = 5900.0
ReloadTime = 54.84375
Projectile = "_bigcannonv250"
FireStdDev =0.00014055609611176
FireStdDevAuto =0.00012777826919250907
