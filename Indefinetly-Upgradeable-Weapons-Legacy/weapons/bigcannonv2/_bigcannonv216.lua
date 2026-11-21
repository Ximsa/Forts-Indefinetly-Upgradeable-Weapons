local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head16",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.5,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head16"
MinFireSpeed = 8000.0
MaxFireSpeed = 10000.0
EnergyFireCost = 12500.0
MetalFireCost = 2500.0
ReloadTime = 78.75
Projectile = "_bigcannonv216"
FireStdDev =0.0035908807405374494
FireStdDevAuto =0.0032644370368522264
