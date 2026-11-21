local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head52",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.8660254037844386,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head52"
MinFireSpeed = 15200.0
MaxFireSpeed = 17200.0
EnergyFireCost = 30500.0
MetalFireCost = 6100.0
ReloadTime = 53.4375
Projectile = "_bigcannonv252"
FireStdDev =0.00011616206290228096
FireStdDevAuto =0.00010560187536570995
