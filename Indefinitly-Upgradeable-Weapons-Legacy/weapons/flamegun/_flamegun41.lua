local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base41",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.7071067811865476,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base41"
NodeEffects = {}
MinFireSpeed = 12500.0
MaxFireSpeed = 12500.1
EnergyFireCost = 2575.4299596940177
MetalFireCost = 54.99131946734253
ReloadTime = 4.078125
Projectile = "flamegun"
RoundsEachBurst =52
FireStdDev =0.12000000000000006
FireStdDevAuto =0.24000000000000013
