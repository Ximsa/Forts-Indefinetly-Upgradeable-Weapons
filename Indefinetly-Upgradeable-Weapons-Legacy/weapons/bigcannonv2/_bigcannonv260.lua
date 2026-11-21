local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head60",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.8660254037844386,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head60"
MinFireSpeed = 16800.0
MaxFireSpeed = 18800.0
EnergyFireCost = 34500.0
MetalFireCost = 6900.0
ReloadTime = 47.8125
Projectile = "_bigcannonv260"
FireStdDev =5.419045964430133e-05
FireStdDevAuto =4.926405422209211e-05
