local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head55",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.8660254037844386,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head55"
NodeEffects = {}
MinFireSpeed = 8.622549379482964
MaxFireSpeed = 17440.0
EnergyFireCost = 8554.90664834129
MetalFireCost = 213.87266620853222
ReloadTime = 5.703125
Projectile = "_mortar255"
FireStdDevAuto =4.057670296227278e-06
