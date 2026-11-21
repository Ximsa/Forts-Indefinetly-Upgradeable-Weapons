local tmp = path
path = path .. "/../1606499289"
dofile( path .. "/weapons/bigcannonv2.lua")
path = tmp
Sprites = {}
Sprites={{Name = "_bigcannonv2head39",States={Normal={Frames={{texture= path .. "/../1606499289".."/weapons/bigcannonv2/head.tga",colour={0.7071067811865476,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="_bigcannonv2head39"
MinFireSpeed = 12600.0
MaxFireSpeed = 14600.0
EnergyFireCost = 24000.0
MetalFireCost = 4800.0
ReloadTime = 62.578125
Projectile = "_bigcannonv239"
FireStdDev =0.0004010229459620655
FireStdDevAuto =0.0003645663145109686
