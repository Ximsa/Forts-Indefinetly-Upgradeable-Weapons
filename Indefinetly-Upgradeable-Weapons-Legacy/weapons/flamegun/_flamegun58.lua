local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base58",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.8660254037844386,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base58"
NodeEffects = {}
MinFireSpeed = 15900.0
MaxFireSpeed = 15900.1
EnergyFireCost = 4027.618815447112
MetalFireCost = 90.8755228527472
ReloadTime = 3.28125
Projectile = "flamegun"
RoundsEachBurst =69
FireStdDev =0.1625000000000001
FireStdDevAuto =0.3250000000000002
