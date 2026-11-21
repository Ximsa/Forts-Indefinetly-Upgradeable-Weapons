local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head2",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.0,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head2"
MinFireSpeed = 5200.0
MaxFireSpeed = 7200.0
EnergyFireCost = 5500.0
MetalFireCost = 1100.0
ReloadTime = 88.59375
Projectile = "_bigcannonv22"
FireStdDev =0.013636363636363634
FireStdDevAuto =0.01239669421487603
