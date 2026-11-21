local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base61",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.8660254037844386,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base61"
NodeEffects = {}
MinFireSpeed = 16500.0
MaxFireSpeed = 16500.1
EnergyFireCost = 4326.027897614147
MetalFireCost = 98.24933801054267
ReloadTime = 3.140625
Projectile = "flamegun"
RoundsEachBurst =72
FireStdDev =0.1700000000000001
FireStdDevAuto =0.3400000000000002
