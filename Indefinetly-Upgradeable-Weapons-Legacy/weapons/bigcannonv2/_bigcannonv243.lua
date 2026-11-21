local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head43",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.7071067811865476,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head43"
MinFireSpeed = 13400.0
MaxFireSpeed = 15400.0
EnergyFireCost = 26000.0
MetalFireCost = 5200.0
ReloadTime = 59.765625
Projectile = "_bigcannonv243"
FireStdDev =0.00027390406800223036
FireStdDevAuto =0.0002490036981838458
