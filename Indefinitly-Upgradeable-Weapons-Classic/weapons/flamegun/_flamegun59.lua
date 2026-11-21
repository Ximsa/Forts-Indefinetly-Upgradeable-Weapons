local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base59",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.8660254037844386,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base59"
NodeEffects = {}
MinFireSpeed = 16100.0
MaxFireSpeed = 16100.1
EnergyFireCost = 4125.550359438473
MetalFireCost = 93.29545289732137
ReloadTime = 3.234375
Projectile = "flamegun"
RoundsEachBurst =70
FireStdDev =0.1650000000000001
FireStdDevAuto =0.3300000000000002
