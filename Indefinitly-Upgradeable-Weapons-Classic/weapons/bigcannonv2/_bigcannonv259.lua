local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head59",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.8660254037844386,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head59"
MinFireSpeed = 16600.0
MaxFireSpeed = 18600.0
EnergyFireCost = 34000.0
MetalFireCost = 6800.0
ReloadTime = 48.515625
Projectile = "_bigcannonv259"
FireStdDev =5.960950560873146e-05
FireStdDevAuto =5.419045964430133e-05
