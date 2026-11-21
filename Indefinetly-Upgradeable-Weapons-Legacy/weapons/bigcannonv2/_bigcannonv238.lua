local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head38",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.7071067811865476,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head38"
MinFireSpeed = 12400.0
MaxFireSpeed = 14400.0
EnergyFireCost = 23500.0
MetalFireCost = 4700.0
ReloadTime = 63.28125
Projectile = "_bigcannonv238"
FireStdDev =0.0004411252405582721
FireStdDevAuto =0.0004010229459620655
