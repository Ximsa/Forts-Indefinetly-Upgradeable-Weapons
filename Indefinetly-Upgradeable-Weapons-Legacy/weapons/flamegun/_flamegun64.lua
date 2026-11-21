local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base64",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.0,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base64"
NodeEffects = {}
MinFireSpeed = 17100.0
MaxFireSpeed = 17100.1
EnergyFireCost = 4638.64460518755
MetalFireCost = 105.9742296262561
ReloadTime = 3.0
Projectile = "flamegun"
RoundsEachBurst =75
FireStdDev =0.1775000000000001
FireStdDevAuto =0.3550000000000002
