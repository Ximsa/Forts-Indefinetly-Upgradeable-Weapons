local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base42",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.7071067811865476,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base42"
NodeEffects = {}
MinFireSpeed = 12700.0
MaxFireSpeed = 12700.1
EnergyFireCost = 2650.6710528142366
MetalFireCost = 56.85055883401976
ReloadTime = 4.03125
Projectile = "flamegun"
RoundsEachBurst =53
FireStdDev =0.12250000000000007
FireStdDevAuto =0.24500000000000013
