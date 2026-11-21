local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base55",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.8660254037844386,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base55"
NodeEffects = {}
MinFireSpeed = 15300.0
MaxFireSpeed = 15300.1
EnergyFireCost = 3742.7716586493134
MetalFireCost = 83.83682863071665
ReloadTime = 3.421875
Projectile = "flamegun"
RoundsEachBurst =66
FireStdDev =0.15500000000000008
FireStdDevAuto =0.31000000000000016
