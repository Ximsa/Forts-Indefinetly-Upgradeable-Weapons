local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head13",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.0,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head13"
MinFireSpeed = 7400.0
MaxFireSpeed = 9400.0
EnergyFireCost = 11000.0
MetalFireCost = 2200.0
ReloadTime = 80.859375
Projectile = "_bigcannonv213"
FireStdDev =0.004779462265655347
FireStdDevAuto =0.004344965696050315
