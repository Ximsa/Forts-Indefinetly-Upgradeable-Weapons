local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head37",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.7071067811865476,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head37"
MinFireSpeed = 12200.0
MaxFireSpeed = 14200.0
EnergyFireCost = 23000.0
MetalFireCost = 4600.0
ReloadTime = 63.984375
Projectile = "_bigcannonv237"
FireStdDev =0.0004852377646140993
FireStdDevAuto =0.0004411252405582721
