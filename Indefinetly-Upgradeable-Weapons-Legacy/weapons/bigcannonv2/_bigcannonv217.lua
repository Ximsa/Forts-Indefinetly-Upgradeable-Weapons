local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head17",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.5,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head17"
MinFireSpeed = 8200.0
MaxFireSpeed = 10200.0
EnergyFireCost = 13000.0
MetalFireCost = 2600.0
ReloadTime = 78.046875
Projectile = "_bigcannonv217"
FireStdDev =0.0032644370368522264
FireStdDevAuto =0.0029676700335020236
