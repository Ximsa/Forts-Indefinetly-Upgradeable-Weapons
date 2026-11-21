local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head14",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.0,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head14"
NodeEffects = {}
MinFireSpeed = 648.1757862238952
MaxFireSpeed = 7805.0
EnergyFireCost = 2121.9526557246913
MetalFireCost = 53.048816393117285
ReloadTime = 8.90625
Projectile = "_mortar214"
FireStdDevAuto =0.00030502389939948
