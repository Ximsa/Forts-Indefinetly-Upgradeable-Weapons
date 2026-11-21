local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head5",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.0,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head5"
MinFireSpeed = 5800.0
MaxFireSpeed = 7800.0
EnergyFireCost = 7000.0
MetalFireCost = 1400.0
ReloadTime = 86.484375
Projectile = "_bigcannonv25"
FireStdDev =0.010245201830476057
FireStdDevAuto =0.009313819845887323
