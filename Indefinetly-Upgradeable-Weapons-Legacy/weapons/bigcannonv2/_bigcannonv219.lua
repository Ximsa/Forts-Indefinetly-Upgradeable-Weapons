local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head19",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.5,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head19"
MinFireSpeed = 8600.0
MaxFireSpeed = 10600.0
EnergyFireCost = 14000.0
MetalFireCost = 2800.0
ReloadTime = 76.640625
Projectile = "_bigcannonv219"
FireStdDev =0.002697881848638203
FireStdDevAuto =0.0024526198623983663
