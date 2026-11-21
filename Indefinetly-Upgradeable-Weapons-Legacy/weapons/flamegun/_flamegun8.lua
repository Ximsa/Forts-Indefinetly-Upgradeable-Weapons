local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base8",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.0,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base8"
NodeEffects = {}
MinFireSpeed = 5900.0
MaxFireSpeed = 5900.1
EnergyFireCost = 646.9113149809777
MetalFireCost = 7.336804694510647
ReloadTime = 5.625
Projectile = "flamegun"
RoundsEachBurst =19
FireStdDev =0.0375
FireStdDevAuto =0.075
