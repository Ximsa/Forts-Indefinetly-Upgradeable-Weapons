local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head53",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.8660254037844386,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head53"
MinFireSpeed = 15400.0
MaxFireSpeed = 17400.0
EnergyFireCost = 31000.0
MetalFireCost = 6200.0
ReloadTime = 52.734375
Projectile = "_bigcannonv253"
FireStdDev =0.00010560187536570995
FireStdDevAuto =9.600170487791814e-05
