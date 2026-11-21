local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base25",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.5,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base25"
NodeEffects = {}
MinFireSpeed = 9300.0
MaxFireSpeed = 9300.1
EnergyFireCost = 1517.5169460987602
MetalFireCost = 28.849839594718397
ReloadTime = 4.828125
Projectile = "flamegun"
RoundsEachBurst =36
FireStdDev =0.08000000000000003
FireStdDevAuto =0.16000000000000006
