local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base48",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.8660254037844386,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base48"
NodeEffects = {}
MinFireSpeed = 13900.0
MaxFireSpeed = 13900.1
EnergyFireCost = 3127.4591649185536
MetalFireCost = 68.63219558099902
ReloadTime = 3.75
Projectile = "flamegun"
RoundsEachBurst =59
FireStdDev =0.13750000000000007
FireStdDevAuto =0.27500000000000013
