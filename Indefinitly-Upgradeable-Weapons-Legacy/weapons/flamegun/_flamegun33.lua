local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base33",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.7071067811865476,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base33"
NodeEffects = {}
MinFireSpeed = 10900.0
MaxFireSpeed = 10900.1
EnergyFireCost = 2013.7112826685761
MetalFireCost = 41.11101239026597
ReloadTime = 4.453125
Projectile = "flamegun"
RoundsEachBurst =44
FireStdDev =0.10000000000000005
FireStdDevAuto =0.2000000000000001
