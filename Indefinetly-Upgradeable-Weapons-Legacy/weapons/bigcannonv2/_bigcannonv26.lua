local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head6",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.0,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head6"
MinFireSpeed = 6000.0
MaxFireSpeed = 8000.0
EnergyFireCost = 7500.0
MetalFireCost = 1500.0
ReloadTime = 85.78125
Projectile = "_bigcannonv26"
FireStdDev =0.009313819845887323
FireStdDevAuto =0.008467108950806657
