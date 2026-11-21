local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base39",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.7071067811865476,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base39"
NodeEffects = {}
MinFireSpeed = 12100.0
MaxFireSpeed = 12100.1
EnergyFireCost = 2428.402630747147
MetalFireCost = 51.35821172502603
ReloadTime = 4.171875
Projectile = "flamegun"
RoundsEachBurst =50
FireStdDev =0.11500000000000006
FireStdDevAuto =0.23000000000000012
