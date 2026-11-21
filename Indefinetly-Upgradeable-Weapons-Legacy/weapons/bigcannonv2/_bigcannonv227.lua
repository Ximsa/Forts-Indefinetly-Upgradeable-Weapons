local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head27",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.5,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head27"
MinFireSpeed = 10200.0
MaxFireSpeed = 12200.0
EnergyFireCost = 18000.0
MetalFireCost = 3600.0
ReloadTime = 71.015625
Projectile = "_bigcannonv227"
FireStdDev =0.0012585817933235999
FireStdDevAuto =0.001144165266657818
