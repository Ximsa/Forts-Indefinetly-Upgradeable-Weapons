local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base17",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.5,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base17"
NodeEffects = {}
MinFireSpeed = 7700.0
MaxFireSpeed = 7700.1
EnergyFireCost = 1079.203552376927
MetalFireCost = 18.018929479584298
ReloadTime = 5.203125
Projectile = "flamegun"
RoundsEachBurst =28
FireStdDev =0.06000000000000002
FireStdDevAuto =0.12000000000000004
