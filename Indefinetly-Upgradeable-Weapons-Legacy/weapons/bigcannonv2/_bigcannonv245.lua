local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head45",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.7071067811865476,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head45"
MinFireSpeed = 13800.0
MaxFireSpeed = 15800.0
EnergyFireCost = 27000.0
MetalFireCost = 5400.0
ReloadTime = 58.359375
Projectile = "_bigcannonv245"
FireStdDev =0.0002263669983489507
FireStdDevAuto =0.00020578818031722788
