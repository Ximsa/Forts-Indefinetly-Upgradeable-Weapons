local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base34",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.7071067811865476,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base34"
NodeEffects = {}
MinFireSpeed = 11100.0
MaxFireSpeed = 11100.1
EnergyFireCost = 2080.1755214602726
MetalFireCost = 42.75337195886387
ReloadTime = 4.40625
Projectile = "flamegun"
RoundsEachBurst =45
FireStdDev =0.10250000000000005
FireStdDevAuto =0.2050000000000001
