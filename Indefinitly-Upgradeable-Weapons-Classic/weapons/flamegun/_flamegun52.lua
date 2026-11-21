local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base52",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.8660254037844386,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base52"
NodeEffects = {}
MinFireSpeed = 14700.0
MaxFireSpeed = 14700.1
EnergyFireCost = 3470.87007258977
MetalFireCost = 77.11802495974723
ReloadTime = 3.5625
Projectile = "flamegun"
RoundsEachBurst =63
FireStdDev =0.14750000000000008
FireStdDevAuto =0.29500000000000015
