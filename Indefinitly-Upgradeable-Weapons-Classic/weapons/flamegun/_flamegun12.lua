local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base12",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.0,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base12"
NodeEffects = {}
MinFireSpeed = 6700.0
MaxFireSpeed = 6700.1
EnergyFireCost = 831.616369007964
MetalFireCost = 11.900945025679416
ReloadTime = 5.4375
Projectile = "flamegun"
RoundsEachBurst =23
FireStdDev =0.04750000000000001
FireStdDevAuto =0.09500000000000001
