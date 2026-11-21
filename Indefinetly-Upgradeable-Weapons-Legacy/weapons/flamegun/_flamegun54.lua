local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base54",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.8660254037844386,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base54"
NodeEffects = {}
MinFireSpeed = 15100.0
MaxFireSpeed = 15100.1
EnergyFireCost = 3650.7290177470163
MetalFireCost = 81.56241588255178
ReloadTime = 3.46875
Projectile = "flamegun"
RoundsEachBurst =65
FireStdDev =0.15250000000000008
FireStdDevAuto =0.30500000000000016
