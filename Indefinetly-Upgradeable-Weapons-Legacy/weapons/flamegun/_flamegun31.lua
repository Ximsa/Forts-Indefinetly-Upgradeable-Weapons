local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base31",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.5,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base31"
NodeEffects = {}
MinFireSpeed = 10500.0
MaxFireSpeed = 10500.1
EnergyFireCost = 1883.8346541563285
MetalFireCost = 37.90170573977027
ReloadTime = 4.546875
Projectile = "flamegun"
RoundsEachBurst =42
FireStdDev =0.09500000000000004
FireStdDevAuto =0.19000000000000009
