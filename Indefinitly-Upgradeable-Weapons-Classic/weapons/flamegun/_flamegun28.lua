local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base28",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.5,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base28"
NodeEffects = {}
MinFireSpeed = 9900.0
MaxFireSpeed = 9900.1
EnergyFireCost = 1696.4169743437656
MetalFireCost = 33.27053527335945
ReloadTime = 4.6875
Projectile = "flamegun"
RoundsEachBurst =39
FireStdDev =0.08750000000000004
FireStdDevAuto =0.17500000000000007
