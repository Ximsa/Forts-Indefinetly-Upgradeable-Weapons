local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base16",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.5,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base16"
NodeEffects = {}
MinFireSpeed = 7500.0
MaxFireSpeed = 7500.1
EnergyFireCost = 1028.138882340359
MetalFireCost = 16.757099795283
ReloadTime = 5.25
Projectile = "flamegun"
RoundsEachBurst =27
FireStdDev =0.057500000000000016
FireStdDevAuto =0.11500000000000003
