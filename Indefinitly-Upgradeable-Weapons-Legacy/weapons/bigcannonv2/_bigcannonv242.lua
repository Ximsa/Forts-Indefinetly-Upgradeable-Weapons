local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head42",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.7071067811865476,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head42"
MinFireSpeed = 13200.0
MaxFireSpeed = 15200.0
EnergyFireCost = 25500.0
MetalFireCost = 5100.0
ReloadTime = 60.46875
Projectile = "_bigcannonv242"
FireStdDev =0.0003012944748024534
FireStdDevAuto =0.00027390406800223036
