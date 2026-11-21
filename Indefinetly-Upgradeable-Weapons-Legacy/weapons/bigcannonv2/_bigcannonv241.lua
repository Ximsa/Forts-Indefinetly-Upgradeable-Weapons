local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head41",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.7071067811865476,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head41"
MinFireSpeed = 13000.0
MaxFireSpeed = 15000.0
EnergyFireCost = 25000.0
MetalFireCost = 5000.0
ReloadTime = 61.171875
Projectile = "_bigcannonv241"
FireStdDev =0.00033142392228269874
FireStdDevAuto =0.0003012944748024534
