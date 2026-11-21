local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head56",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.8660254037844386,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head56"
MinFireSpeed = 16000.0
MaxFireSpeed = 18000.0
EnergyFireCost = 32500.0
MetalFireCost = 6500.0
ReloadTime = 50.625
Projectile = "_bigcannonv256"
FireStdDev =7.934025196522159e-05
FireStdDevAuto =7.212750178656508e-05
