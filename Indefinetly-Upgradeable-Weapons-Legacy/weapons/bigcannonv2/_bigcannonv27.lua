local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head7",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.0,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head7"
MinFireSpeed = 6200.0
MaxFireSpeed = 8200.0
EnergyFireCost = 8000.0
MetalFireCost = 1600.0
ReloadTime = 85.078125
Projectile = "_bigcannonv27"
FireStdDev =0.008467108950806657
FireStdDevAuto =0.0076973717734605965
