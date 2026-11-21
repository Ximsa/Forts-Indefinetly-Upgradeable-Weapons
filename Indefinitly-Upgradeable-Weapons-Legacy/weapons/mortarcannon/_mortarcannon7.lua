local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head7",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.0,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head7"
NodeEffects = {}
MinFireSpeed = 1355.1745500000002
MaxFireSpeed = 6160.0
EnergyFireCost = 1377.1366737154312
MetalFireCost = 34.42841684288578
ReloadTime = 9.453125
Projectile = "_mortar27"
FireStdDevAuto =0.0006377292
