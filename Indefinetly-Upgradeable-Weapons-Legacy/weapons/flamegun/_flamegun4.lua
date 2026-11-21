local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base4",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.0,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base4"
NodeEffects = {}
MinFireSpeed = 5100.0
MaxFireSpeed = 5100.1
EnergyFireCost = 473.31310272216797
MetalFireCost = 3.047119140625
ReloadTime = 5.8125
Projectile = "flamegun"
RoundsEachBurst =15
FireStdDev =0.027499999999999997
FireStdDevAuto =0.05499999999999999
