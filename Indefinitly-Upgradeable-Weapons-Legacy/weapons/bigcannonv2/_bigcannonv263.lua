local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head63",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.8660254037844386,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head63"
MinFireSpeed = 17400.0
MaxFireSpeed = 19400.0
EnergyFireCost = 36000.0
MetalFireCost = 7200.0
ReloadTime = 45.703125
Projectile = "_bigcannonv263"
FireStdDev =4.0714094398423225e-05
FireStdDevAuto =3.7012813089475656e-05
