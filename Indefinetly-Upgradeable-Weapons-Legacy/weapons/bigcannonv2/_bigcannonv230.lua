local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head30",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.5,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head30"
MinFireSpeed = 10800.0
MaxFireSpeed = 12800.0
EnergyFireCost = 19500.0
MetalFireCost = 3900.0
ReloadTime = 68.90625
Projectile = "_bigcannonv230"
FireStdDev =0.0009455911294692709
FireStdDevAuto =0.0008596282995175189
