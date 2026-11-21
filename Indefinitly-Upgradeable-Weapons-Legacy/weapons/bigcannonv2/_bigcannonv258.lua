local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head58",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.8660254037844386,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head58"
MinFireSpeed = 16400.0
MaxFireSpeed = 18400.0
EnergyFireCost = 33500.0
MetalFireCost = 6700.0
ReloadTime = 49.21875
Projectile = "_bigcannonv258"
FireStdDev =6.557045616960461e-05
FireStdDevAuto =5.960950560873146e-05
