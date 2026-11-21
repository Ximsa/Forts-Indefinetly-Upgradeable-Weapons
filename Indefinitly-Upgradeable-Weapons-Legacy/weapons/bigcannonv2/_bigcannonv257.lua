local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head57",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.8660254037844386,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head57"
MinFireSpeed = 16200.0
MaxFireSpeed = 18200.0
EnergyFireCost = 33000.0
MetalFireCost = 6600.0
ReloadTime = 49.921875
Projectile = "_bigcannonv257"
FireStdDev =7.212750178656508e-05
FireStdDevAuto =6.557045616960461e-05
