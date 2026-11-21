local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base26",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.5,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base26"
NodeEffects = {}
MinFireSpeed = 9500.0
MaxFireSpeed = 9500.1
EnergyFireCost = 1576.2281483815534
MetalFireCost = 30.30061833838587
ReloadTime = 4.78125
Projectile = "flamegun"
RoundsEachBurst =37
FireStdDev =0.08250000000000003
FireStdDevAuto =0.16500000000000006
