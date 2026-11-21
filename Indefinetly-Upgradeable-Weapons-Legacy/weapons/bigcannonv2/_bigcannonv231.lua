local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head31",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.5,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head31"
MinFireSpeed = 11000.0
MaxFireSpeed = 13000.0
EnergyFireCost = 20000.0
MetalFireCost = 4000.0
ReloadTime = 68.203125
Projectile = "_bigcannonv231"
FireStdDev =0.0008596282995175189
FireStdDevAuto =0.0007814802722886535
