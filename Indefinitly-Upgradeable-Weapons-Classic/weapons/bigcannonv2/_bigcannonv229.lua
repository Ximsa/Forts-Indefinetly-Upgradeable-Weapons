local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head29",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.5,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head29"
MinFireSpeed = 10600.0
MaxFireSpeed = 12600.0
EnergyFireCost = 19000.0
MetalFireCost = 3800.0
ReloadTime = 69.609375
Projectile = "_bigcannonv229"
FireStdDev =0.0010401502424161981
FireStdDevAuto =0.0009455911294692709
