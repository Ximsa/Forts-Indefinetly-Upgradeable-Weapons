local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base56",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.8660254037844386,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base56"
NodeEffects = {}
MinFireSpeed = 15500.0
MaxFireSpeed = 15500.1
EnergyFireCost = 3836.252465815709
MetalFireCost = 86.1467790780716
ReloadTime = 3.375
Projectile = "flamegun"
RoundsEachBurst =67
FireStdDev =0.15750000000000008
FireStdDevAuto =0.31500000000000017
