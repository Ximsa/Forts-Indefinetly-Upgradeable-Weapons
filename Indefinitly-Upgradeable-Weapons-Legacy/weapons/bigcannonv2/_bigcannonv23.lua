local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head3",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.0,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head3"
MinFireSpeed = 5400.0
MaxFireSpeed = 7400.0
EnergyFireCost = 6000.0
MetalFireCost = 1200.0
ReloadTime = 87.890625
Projectile = "_bigcannonv23"
FireStdDev =0.01239669421487603
FireStdDevAuto =0.011269722013523662
