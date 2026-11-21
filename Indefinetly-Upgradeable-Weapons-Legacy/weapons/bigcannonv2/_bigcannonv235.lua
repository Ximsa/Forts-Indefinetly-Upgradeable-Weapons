local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head35",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.7071067811865476,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head35"
MinFireSpeed = 11800.0
MaxFireSpeed = 13800.0
EnergyFireCost = 22000.0
MetalFireCost = 4400.0
ReloadTime = 65.390625
Projectile = "_bigcannonv235"
FireStdDev =0.0005871376951830603
FireStdDevAuto =0.0005337615410755093
