local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base23",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.5,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base23"
NodeEffects = {}
MinFireSpeed = 8900.0
MaxFireSpeed = 8900.1
EnergyFireCost = 1402.790393188289
MetalFireCost = 26.014897746737645
ReloadTime = 4.921875
Projectile = "flamegun"
RoundsEachBurst =34
FireStdDev =0.07500000000000002
FireStdDevAuto =0.15000000000000005
