local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base35",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.7071067811865476,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base35"
NodeEffects = {}
MinFireSpeed = 11300.0
MaxFireSpeed = 11300.1
EnergyFireCost = 2147.6782639830894
MetalFireCost = 44.42139339572112
ReloadTime = 4.359375
Projectile = "flamegun"
RoundsEachBurst =46
FireStdDev =0.10500000000000005
FireStdDevAuto =0.2100000000000001
