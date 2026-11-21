local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head51",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.8660254037844386,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head51"
NodeEffects = {}
MinFireSpeed = 13.142126778666304
MaxFireSpeed = 16500.0
EnergyFireCost = 7732.595504026207
MetalFireCost = 193.31488760065523
ReloadTime = 6.015625
Projectile = "_mortar251"
FireStdDevAuto =6.184530248784145e-06
