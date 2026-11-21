local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base50",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.8660254037844386,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base50"
NodeEffects = {}
MinFireSpeed = 14300.0
MaxFireSpeed = 14300.1
EnergyFireCost = 3296.5026786574435
MetalFireCost = 72.8093326000295
ReloadTime = 3.65625
Projectile = "flamegun"
RoundsEachBurst =61
FireStdDev =0.14250000000000007
FireStdDevAuto =0.28500000000000014
