local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head12",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.0,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head12"
MinFireSpeed = 7200.0
MaxFireSpeed = 9200.0
EnergyFireCost = 10500.0
MetalFireCost = 2100.0
ReloadTime = 81.5625
Projectile = "_bigcannonv212"
FireStdDev =0.005257408492220882
FireStdDevAuto =0.004779462265655347
