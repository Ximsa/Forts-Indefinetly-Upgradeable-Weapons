local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head64",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.0,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head64"
MinFireSpeed = 17600.0
MaxFireSpeed = 19600.0
EnergyFireCost = 36500.0
MetalFireCost = 7300.0
ReloadTime = 45.0
Projectile = "_bigcannonv264"
FireStdDev =3.7012813089475656e-05
FireStdDevAuto =3.364801189952332e-05
