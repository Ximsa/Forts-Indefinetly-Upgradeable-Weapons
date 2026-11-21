local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base51",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.8660254037844386,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base51"
NodeEffects = {}
MinFireSpeed = 14500.0
MaxFireSpeed = 14500.1
EnergyFireCost = 3383.010533011466
MetalFireCost = 74.94697842190497
ReloadTime = 3.609375
Projectile = "flamegun"
RoundsEachBurst =62
FireStdDev =0.14500000000000007
FireStdDevAuto =0.29000000000000015
