local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base5",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.0,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base5"
NodeEffects = {}
MinFireSpeed = 5300.0
MaxFireSpeed = 5300.1
EnergyFireCost = 515.7086199522018
MetalFireCost = 4.094730377197266
ReloadTime = 5.765625
Projectile = "flamegun"
RoundsEachBurst =16
FireStdDev =0.029999999999999995
FireStdDevAuto =0.05999999999999999
