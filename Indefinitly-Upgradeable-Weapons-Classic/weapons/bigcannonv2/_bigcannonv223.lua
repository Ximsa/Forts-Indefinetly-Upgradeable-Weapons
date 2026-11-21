local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head23",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.5,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head23"
MinFireSpeed = 9400.0
MaxFireSpeed = 11400.0
EnergyFireCost = 16000.0
MetalFireCost = 3200.0
ReloadTime = 73.828125
Projectile = "_bigcannonv223"
FireStdDev =0.0018426896036050832
FireStdDevAuto =0.0016751723669137118
