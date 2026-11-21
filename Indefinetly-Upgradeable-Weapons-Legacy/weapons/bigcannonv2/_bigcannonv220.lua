local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head20",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.5,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head20"
MinFireSpeed = 8800.0
MaxFireSpeed = 10800.0
EnergyFireCost = 14500.0
MetalFireCost = 2900.0
ReloadTime = 75.9375
Projectile = "_bigcannonv220"
FireStdDev =0.0024526198623983663
FireStdDevAuto =0.002229654420362151
