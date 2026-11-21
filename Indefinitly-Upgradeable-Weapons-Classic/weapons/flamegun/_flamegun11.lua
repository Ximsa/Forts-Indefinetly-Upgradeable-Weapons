local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base11",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.0,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base11"
NodeEffects = {}
MinFireSpeed = 6500.0
MaxFireSpeed = 6500.1
EnergyFireCost = 784.3607325616875
MetalFireCost = 10.733238179130502
ReloadTime = 5.484375
Projectile = "flamegun"
RoundsEachBurst =22
FireStdDev =0.045000000000000005
FireStdDevAuto =0.09000000000000001
