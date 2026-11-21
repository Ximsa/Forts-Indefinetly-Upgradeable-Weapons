local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base15",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.0,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base15"
NodeEffects = {}
MinFireSpeed = 7300.0
MaxFireSpeed = 7300.1
EnergyFireCost = 977.8598226120457
MetalFireCost = 15.514682875355566
ReloadTime = 5.296875
Projectile = "flamegun"
RoundsEachBurst =26
FireStdDev =0.055000000000000014
FireStdDevAuto =0.11000000000000003
