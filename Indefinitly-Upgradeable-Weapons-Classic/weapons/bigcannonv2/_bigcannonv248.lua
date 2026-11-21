local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head48",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.8660254037844386,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head48"
MinFireSpeed = 14400.0
MaxFireSpeed = 16400.0
EnergyFireCost = 28500.0
MetalFireCost = 5700.0
ReloadTime = 56.25
Projectile = "_bigcannonv248"
FireStdDev =0.0001700728762952296
FireStdDevAuto =0.000154611705722936
