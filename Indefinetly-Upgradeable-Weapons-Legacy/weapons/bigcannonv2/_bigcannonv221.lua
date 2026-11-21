local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head21",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.5,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head21"
MinFireSpeed = 9000.0
MaxFireSpeed = 11000.0
EnergyFireCost = 15000.0
MetalFireCost = 3000.0
ReloadTime = 75.234375
Projectile = "_bigcannonv221"
FireStdDev =0.002229654420362151
FireStdDevAuto =0.002026958563965592
