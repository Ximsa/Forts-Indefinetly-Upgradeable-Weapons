local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head36",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.7071067811865476,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head36"
MinFireSpeed = 12000.0
MaxFireSpeed = 14000.0
EnergyFireCost = 22500.0
MetalFireCost = 4500.0
ReloadTime = 64.6875
Projectile = "_bigcannonv236"
FireStdDev =0.0005337615410755093
FireStdDevAuto =0.0004852377646140993
