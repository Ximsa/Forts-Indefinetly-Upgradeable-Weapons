local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head15",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.0,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head15"
MinFireSpeed = 7800.0
MaxFireSpeed = 9800.0
EnergyFireCost = 12000.0
MetalFireCost = 2400.0
ReloadTime = 79.453125
Projectile = "_bigcannonv215"
FireStdDev =0.003949968814591195
FireStdDevAuto =0.0035908807405374494
