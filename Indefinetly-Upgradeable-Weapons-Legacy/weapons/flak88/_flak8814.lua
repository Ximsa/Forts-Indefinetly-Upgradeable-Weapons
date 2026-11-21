local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flak88.lua")
path = tmp
Sprites={{Name = "flak88-barrel14",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/flak88/barrel.tga",colour={0.0,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].ChildrenBehind[1].Sprite="flak88-barrel14"
NodeEffects = {}
MinFireSpeed = 13200.0
MaxFireSpeed = 13200.1
EnergyFireCost = 4111.28327046659
MetalFireCost = 106.09763278623457
ReloadTime = 4.8984375
Projectile = "_cannon88he14"
FireStdDev =0.0014483218986834387
FireStdDevAuto =0.0014483218986834387
