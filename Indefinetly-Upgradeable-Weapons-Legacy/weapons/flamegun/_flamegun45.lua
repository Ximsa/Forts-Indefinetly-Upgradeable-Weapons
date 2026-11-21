local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base45",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.7071067811865476,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base45"
NodeEffects = {}
MinFireSpeed = 13300.0
MaxFireSpeed = 13300.1
EnergyFireCost = 2883.5219493069067
MetalFireCost = 62.60440338055678
ReloadTime = 3.890625
Projectile = "flamegun"
RoundsEachBurst =56
FireStdDev =0.13000000000000006
FireStdDevAuto =0.2600000000000001
