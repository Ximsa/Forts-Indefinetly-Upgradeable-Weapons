local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/mortarcannon.lua")
path = tmp
Sprites={{Name = "mortarcannon-head3",States={Normal={Frames={{texture= "weapons/mortar/head.tga",colour={0.0,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenBehind[1].Sprite="mortarcannon-head3"
NodeEffects = {}
MinFireSpeed = 2065.5
MaxFireSpeed = 5220.0
EnergyFireCost = 986.4453125
MetalFireCost = 24.6611328125
ReloadTime = 9.765625
Projectile = "_mortar23"
FireStdDevAuto =0.000972
