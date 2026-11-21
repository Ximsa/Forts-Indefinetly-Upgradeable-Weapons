local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head29",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.5,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head29"
NodeEffects = {}
MinFireSpeed = 133.45364642197703
MaxFireSpeed = 11330.0
EnergyFireCost = 4018.110833298025
MetalFireCost = 100.45277083245065
ReloadTime = 7.734375
Projectile = "_mortar229"
FireStdDevAuto =6.28017159632833e-05
