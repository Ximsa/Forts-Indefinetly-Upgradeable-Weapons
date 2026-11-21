local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base3",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.0,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base3"
NodeEffects = {}
MinFireSpeed = 4900.0
MaxFireSpeed = 4900.1
EnergyFireCost = 431.56982421875
MetalFireCost = 2.015625
ReloadTime = 5.859375
Projectile = "flamegun"
RoundsEachBurst =14
FireStdDev =0.024999999999999998
FireStdDevAuto =0.049999999999999996
