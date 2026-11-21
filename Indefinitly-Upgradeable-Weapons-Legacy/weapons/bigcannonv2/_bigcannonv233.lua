local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head33",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.7071067811865476,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head33"
MinFireSpeed = 11400.0
MaxFireSpeed = 13400.0
EnergyFireCost = 21000.0
MetalFireCost = 4200.0
ReloadTime = 66.796875
Projectile = "_bigcannonv233"
FireStdDev =0.0007104366111715031
FireStdDevAuto =0.0006458514647013664
