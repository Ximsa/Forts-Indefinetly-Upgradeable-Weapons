local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head22",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.5,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head22"
MinFireSpeed = 9200.0
MaxFireSpeed = 11200.0
EnergyFireCost = 15500.0
MetalFireCost = 3100.0
ReloadTime = 74.53125
Projectile = "_bigcannonv222"
FireStdDev =0.002026958563965592
FireStdDevAuto =0.0018426896036050832
