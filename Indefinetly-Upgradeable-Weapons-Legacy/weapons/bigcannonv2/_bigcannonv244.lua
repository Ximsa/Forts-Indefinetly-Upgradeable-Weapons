local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head44",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.7071067811865476,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head44"
MinFireSpeed = 13600.0
MaxFireSpeed = 15600.0
EnergyFireCost = 26500.0
MetalFireCost = 5300.0
ReloadTime = 59.0625
Projectile = "_bigcannonv244"
FireStdDev =0.0002490036981838458
FireStdDevAuto =0.0002263669983489507
