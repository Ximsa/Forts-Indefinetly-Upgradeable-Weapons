local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head49",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.8660254037844386,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head49"
MinFireSpeed = 14600.0
MaxFireSpeed = 16600.0
EnergyFireCost = 29000.0
MetalFireCost = 5800.0
ReloadTime = 55.546875
Projectile = "_bigcannonv249"
FireStdDev =0.000154611705722936
FireStdDevAuto =0.00014055609611176
