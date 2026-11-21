local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head18",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.5,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head18"
MinFireSpeed = 8400.0
MaxFireSpeed = 10400.0
EnergyFireCost = 13500.0
MetalFireCost = 2700.0
ReloadTime = 77.34375
Projectile = "_bigcannonv218"
FireStdDev =0.0029676700335020236
FireStdDevAuto =0.002697881848638203
