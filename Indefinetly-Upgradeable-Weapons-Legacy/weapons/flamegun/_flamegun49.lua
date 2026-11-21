local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base49",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.8660254037844386,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base49"
NodeEffects = {}
MinFireSpeed = 14100.0
MaxFireSpeed = 14100.1
EnergyFireCost = 3211.325714370406
MetalFireCost = 70.70457363695213
ReloadTime = 3.703125
Projectile = "flamegun"
RoundsEachBurst =60
FireStdDev =0.14000000000000007
FireStdDevAuto =0.28000000000000014
