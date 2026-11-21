local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base30",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.5,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base30"
NodeEffects = {}
MinFireSpeed = 10300.0
MaxFireSpeed = 10300.1
EnergyFireCost = 1820.391044092385
MetalFireCost = 36.333987189927655
ReloadTime = 4.59375
Projectile = "flamegun"
RoundsEachBurst =41
FireStdDev =0.09250000000000004
FireStdDevAuto =0.18500000000000008
