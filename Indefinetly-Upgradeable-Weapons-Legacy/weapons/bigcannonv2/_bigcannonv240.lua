local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head40",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.7071067811865476,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head40"
MinFireSpeed = 12800.0
MaxFireSpeed = 14800.0
EnergyFireCost = 24500.0
MetalFireCost = 4900.0
ReloadTime = 61.875
Projectile = "_bigcannonv240"
FireStdDev =0.0003645663145109686
FireStdDevAuto =0.00033142392228269874
