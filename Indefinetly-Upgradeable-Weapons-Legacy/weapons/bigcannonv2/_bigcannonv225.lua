local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head25",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.5,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head25"
MinFireSpeed = 9800.0
MaxFireSpeed = 11800.0
EnergyFireCost = 17000.0
MetalFireCost = 3400.0
ReloadTime = 72.421875
Projectile = "_bigcannonv225"
FireStdDev =0.001522883969921556
FireStdDevAuto =0.00138443997265596
