local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head12",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.0,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head12"
NodeEffects = {}
MinFireSpeed = 800.2170200295003
MaxFireSpeed = 7335.0
EnergyFireCost = 1900.8374148753458
MetalFireCost = 47.520935371883645
ReloadTime = 9.0625
Projectile = "_mortar212"
FireStdDevAuto =0.000376572715308
