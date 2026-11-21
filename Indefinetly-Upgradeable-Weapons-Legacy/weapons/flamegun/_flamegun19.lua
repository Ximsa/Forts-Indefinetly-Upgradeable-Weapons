local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base19",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.5,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base19"
NodeEffects = {}
MinFireSpeed = 8100.0
MaxFireSpeed = 8100.1
EnergyFireCost = 1183.7390158184855
MetalFireCost = 20.602045178526286
ReloadTime = 5.109375
Projectile = "flamegun"
RoundsEachBurst =30
FireStdDev =0.06500000000000002
FireStdDevAuto =0.13000000000000003
