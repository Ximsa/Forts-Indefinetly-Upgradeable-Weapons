local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head11",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.0,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head11"
MinFireSpeed = 7000.0
MaxFireSpeed = 9000.0
EnergyFireCost = 10000.0
MetalFireCost = 2000.0
ReloadTime = 82.265625
Projectile = "_bigcannonv211"
FireStdDev =0.005783149341442971
FireStdDevAuto =0.005257408492220882
