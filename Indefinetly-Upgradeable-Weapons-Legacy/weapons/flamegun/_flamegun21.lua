local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base21",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.5,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base21"
NodeEffects = {}
MinFireSpeed = 8500.0
MaxFireSpeed = 8500.1
EnergyFireCost = 1291.566733845972
MetalFireCost = 23.266513886541397
ReloadTime = 5.015625
Projectile = "flamegun"
RoundsEachBurst =32
FireStdDev =0.07000000000000002
FireStdDevAuto =0.14000000000000004
