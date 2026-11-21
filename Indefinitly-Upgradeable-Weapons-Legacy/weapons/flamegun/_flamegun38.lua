local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base38",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.7071067811865476,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base38"
NodeEffects = {}
MinFireSpeed = 11900.0
MaxFireSpeed = 11900.1
EnergyFireCost = 2356.581051812576
MetalFireCost = 49.583470006179475
ReloadTime = 4.21875
Projectile = "flamegun"
RoundsEachBurst =49
FireStdDev =0.11250000000000006
FireStdDevAuto =0.22500000000000012
