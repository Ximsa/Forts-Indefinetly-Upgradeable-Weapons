local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base29",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.5,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base29"
NodeEffects = {}
MinFireSpeed = 10100.0
MaxFireSpeed = 10100.1
EnergyFireCost = 1757.923489567887
MetalFireCost = 34.790387387005694
ReloadTime = 4.640625
Projectile = "flamegun"
RoundsEachBurst =40
FireStdDev =0.09000000000000004
FireStdDevAuto =0.18000000000000008
