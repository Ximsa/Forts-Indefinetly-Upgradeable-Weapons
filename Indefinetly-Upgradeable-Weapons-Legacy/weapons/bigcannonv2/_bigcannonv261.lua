local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head61",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.8660254037844386,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head61"
MinFireSpeed = 17000.0
MaxFireSpeed = 19000.0
EnergyFireCost = 35000.0
MetalFireCost = 7000.0
ReloadTime = 47.109375
Projectile = "_bigcannonv261"
FireStdDev =4.926405422209211e-05
FireStdDevAuto =4.478550383826555e-05
