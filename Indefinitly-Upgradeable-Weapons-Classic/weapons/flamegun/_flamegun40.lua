local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base40",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.7071067811865476,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base40"
NodeEffects = {}
MinFireSpeed = 12300.0
MaxFireSpeed = 12300.1
EnergyFireCost = 2501.3464218525714
MetalFireCost = 53.160683783229565
ReloadTime = 4.125
Projectile = "flamegun"
RoundsEachBurst =51
FireStdDev =0.11750000000000006
FireStdDevAuto =0.23500000000000013
