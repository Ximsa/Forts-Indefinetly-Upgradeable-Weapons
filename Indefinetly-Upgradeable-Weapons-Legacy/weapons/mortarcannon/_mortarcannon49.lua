local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head49",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.8660254037844386,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head49"
NodeEffects = {}
MinFireSpeed = 16.22484787489667
MaxFireSpeed = 16030.0
EnergyFireCost = 7340.17306141807
MetalFireCost = 183.50432653545178
ReloadTime = 6.171875
Projectile = "_mortar249"
FireStdDevAuto =7.635222529363142e-06
