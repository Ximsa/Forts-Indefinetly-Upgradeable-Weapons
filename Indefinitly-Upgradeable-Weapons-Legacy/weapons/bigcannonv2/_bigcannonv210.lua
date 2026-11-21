local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head10",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.0,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head10"
MinFireSpeed = 6800.0
MaxFireSpeed = 8800.0
EnergyFireCost = 9500.0
MetalFireCost = 1900.0
ReloadTime = 82.96875
Projectile = "_bigcannonv210"
FireStdDev =0.006361464275587268
FireStdDevAuto =0.005783149341442971
