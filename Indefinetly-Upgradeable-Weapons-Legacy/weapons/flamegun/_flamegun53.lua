local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base53",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.8660254037844386,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base53"
NodeEffects = {}
MinFireSpeed = 14900.0
MaxFireSpeed = 14900.1
EnergyFireCost = 3560.1024174739855
MetalFireCost = 79.32299409974328
ReloadTime = 3.515625
Projectile = "flamegun"
RoundsEachBurst =64
FireStdDev =0.15000000000000008
FireStdDevAuto =0.30000000000000016
