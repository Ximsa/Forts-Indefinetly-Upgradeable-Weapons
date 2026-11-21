local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head26",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.5,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head26"
MinFireSpeed = 10000.0
MaxFireSpeed = 12000.0
EnergyFireCost = 17500.0
MetalFireCost = 3500.0
ReloadTime = 71.71875
Projectile = "_bigcannonv226"
FireStdDev =0.00138443997265596
FireStdDevAuto =0.0012585817933235999
