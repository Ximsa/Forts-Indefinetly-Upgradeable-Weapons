local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base22",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.5,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base22"
NodeEffects = {}
MinFireSpeed = 8700.0
MaxFireSpeed = 8700.1
EnergyFireCost = 1346.7474640623154
MetalFireCost = 24.630053166018605
ReloadTime = 4.96875
Projectile = "flamegun"
RoundsEachBurst =33
FireStdDev =0.07250000000000002
FireStdDevAuto =0.14500000000000005
