local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head34",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.7071067811865476,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head34"
MinFireSpeed = 11600.0
MaxFireSpeed = 13600.0
EnergyFireCost = 21500.0
MetalFireCost = 4300.0
ReloadTime = 66.09375
Projectile = "_bigcannonv234"
FireStdDev =0.0006458514647013664
FireStdDevAuto =0.0005871376951830603
