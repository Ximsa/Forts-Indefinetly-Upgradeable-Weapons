local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base13",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.0,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base13"
NodeEffects = {}
MinFireSpeed = 6900.0
MaxFireSpeed = 6900.1
EnergyFireCost = 879.6103747737134
MetalFireCost = 13.086897291705657
ReloadTime = 5.390625
Projectile = "flamegun"
RoundsEachBurst =24
FireStdDev =0.05000000000000001
FireStdDevAuto =0.10000000000000002
