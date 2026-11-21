local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head28",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.5,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head28"
MinFireSpeed = 10400.0
MaxFireSpeed = 12400.0
EnergyFireCost = 18500.0
MetalFireCost = 3700.0
ReloadTime = 70.3125
Projectile = "_bigcannonv228"
FireStdDev =0.001144165266657818
FireStdDevAuto =0.0010401502424161981
