local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base18",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.5,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base18"
NodeEffects = {}
MinFireSpeed = 7900.0
MaxFireSpeed = 7900.1
EnergyFireCost = 1131.0661078828166
MetalFireCost = 19.300475252702803
ReloadTime = 5.15625
Projectile = "flamegun"
RoundsEachBurst =29
FireStdDev =0.06250000000000001
FireStdDevAuto =0.12500000000000003
