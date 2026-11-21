local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head14",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.0,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head14"
MinFireSpeed = 7600.0
MaxFireSpeed = 9600.0
EnergyFireCost = 11500.0
MetalFireCost = 2300.0
ReloadTime = 80.15625
Projectile = "_bigcannonv214"
FireStdDev =0.004344965696050315
FireStdDevAuto =0.003949968814591195
