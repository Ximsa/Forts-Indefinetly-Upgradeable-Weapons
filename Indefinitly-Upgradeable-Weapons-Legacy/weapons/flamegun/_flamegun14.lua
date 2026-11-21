local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base14",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.0,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base14"
NodeEffects = {}
MinFireSpeed = 7100.0
MaxFireSpeed = 7100.1
EnergyFireCost = 928.3542868795527
MetalFireCost = 14.291380061888558
ReloadTime = 5.34375
Projectile = "flamegun"
RoundsEachBurst =25
FireStdDev =0.05250000000000001
FireStdDevAuto =0.10500000000000002
