local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head32",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.7071067811865476,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head32"
MinFireSpeed = 11200.0
MaxFireSpeed = 13200.0
EnergyFireCost = 20500.0
MetalFireCost = 4100.0
ReloadTime = 67.5
Projectile = "_bigcannonv232"
FireStdDev =0.0007814802722886535
FireStdDevAuto =0.0007104366111715031
