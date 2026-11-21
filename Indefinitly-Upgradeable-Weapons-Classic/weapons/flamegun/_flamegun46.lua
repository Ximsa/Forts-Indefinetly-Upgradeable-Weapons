local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base46",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.7071067811865476,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base46"
NodeEffects = {}
MinFireSpeed = 13500.0
MaxFireSpeed = 13500.1
EnergyFireCost = 2963.5769797648272
MetalFireCost = 64.58259718337798
ReloadTime = 3.84375
Projectile = "flamegun"
RoundsEachBurst =57
FireStdDev =0.13250000000000006
FireStdDevAuto =0.2650000000000001
