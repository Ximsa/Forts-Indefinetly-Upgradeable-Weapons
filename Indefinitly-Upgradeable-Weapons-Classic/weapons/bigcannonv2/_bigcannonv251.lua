local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head51",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.8660254037844386,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head51"
MinFireSpeed = 15000.0
MaxFireSpeed = 17000.0
EnergyFireCost = 30000.0
MetalFireCost = 6000.0
ReloadTime = 54.140625
Projectile = "_bigcannonv251"
FireStdDev =0.00012777826919250907
FireStdDevAuto =0.00011616206290228096
