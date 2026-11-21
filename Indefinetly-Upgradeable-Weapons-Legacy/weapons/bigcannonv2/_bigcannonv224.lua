local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head24",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.5,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head24"
MinFireSpeed = 9600.0
MaxFireSpeed = 11600.0
EnergyFireCost = 16500.0
MetalFireCost = 3300.0
ReloadTime = 73.125
Projectile = "_bigcannonv224"
FireStdDev =0.0016751723669137118
FireStdDevAuto =0.001522883969921556
