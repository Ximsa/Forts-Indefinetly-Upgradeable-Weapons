local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head55",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.8660254037844386,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head55"
MinFireSpeed = 15800.0
MaxFireSpeed = 17800.0
EnergyFireCost = 32000.0
MetalFireCost = 6400.0
ReloadTime = 51.328125
Projectile = "_bigcannonv255"
FireStdDev =8.727427716174376e-05
FireStdDevAuto =7.934025196522159e-05
