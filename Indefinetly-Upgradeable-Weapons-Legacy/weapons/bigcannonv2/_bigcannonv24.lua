local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head4",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.0,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head4"
MinFireSpeed = 5600.0
MaxFireSpeed = 7600.0
EnergyFireCost = 6500.0
MetalFireCost = 1300.0
ReloadTime = 87.1875
Projectile = "_bigcannonv24"
FireStdDev =0.011269722013523662
FireStdDevAuto =0.010245201830476057
