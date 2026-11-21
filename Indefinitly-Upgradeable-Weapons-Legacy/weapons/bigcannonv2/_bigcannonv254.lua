local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head54",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.8660254037844386,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head54"
MinFireSpeed = 15600.0
MaxFireSpeed = 17600.0
EnergyFireCost = 31500.0
MetalFireCost = 6300.0
ReloadTime = 52.03125
Projectile = "_bigcannonv254"
FireStdDev =9.600170487791814e-05
FireStdDevAuto =8.727427716174376e-05
