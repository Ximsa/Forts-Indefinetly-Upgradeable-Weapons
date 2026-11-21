local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base2",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.0,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base2"
NodeEffects = {}
MinFireSpeed = 4700.0
MaxFireSpeed = 4700.1
EnergyFireCost = 390.46875
MetalFireCost = 1.0
ReloadTime = 5.90625
Projectile = "flamegun"
RoundsEachBurst =13
FireStdDev =0.0225
FireStdDevAuto =0.045
