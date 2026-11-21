local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head46",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.7071067811865476,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head46"
MinFireSpeed = 14000.0
MaxFireSpeed = 16000.0
EnergyFireCost = 27500.0
MetalFireCost = 5500.0
ReloadTime = 57.65625
Projectile = "_bigcannonv246"
FireStdDev =0.00020578818031722788
FireStdDevAuto =0.0001870801639247526
