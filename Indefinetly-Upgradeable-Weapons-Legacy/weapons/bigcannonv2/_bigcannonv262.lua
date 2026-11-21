local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head62",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.8660254037844386,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head62"
MinFireSpeed = 17200.0
MaxFireSpeed = 19200.0
EnergyFireCost = 35500.0
MetalFireCost = 7100.0
ReloadTime = 46.40625
Projectile = "_bigcannonv262"
FireStdDev =4.478550383826555e-05
FireStdDevAuto =4.0714094398423225e-05
