local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head9",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.0,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head9"
MinFireSpeed = 6600.0
MaxFireSpeed = 8600.0
EnergyFireCost = 9000.0
MetalFireCost = 1800.0
ReloadTime = 83.671875
Projectile = "_bigcannonv29"
FireStdDev =0.006997610703145996
FireStdDevAuto =0.006361464275587268
