local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head47",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.7071067811865476,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head47"
MinFireSpeed = 14200.0
MaxFireSpeed = 16200.0
EnergyFireCost = 28000.0
MetalFireCost = 5600.0
ReloadTime = 56.953125
Projectile = "_bigcannonv247"
FireStdDev =0.0001870801639247526
FireStdDevAuto =0.0001700728762952296
