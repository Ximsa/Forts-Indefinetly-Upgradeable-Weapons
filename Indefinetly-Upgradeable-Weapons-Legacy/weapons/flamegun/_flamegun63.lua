local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base63",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.8660254037844386,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base63"
NodeEffects = {}
MinFireSpeed = 16900.0
MaxFireSpeed = 16900.1
EnergyFireCost = 4532.81930356928
MetalFireCost = 103.35924147815986
ReloadTime = 3.046875
Projectile = "flamegun"
RoundsEachBurst =74
FireStdDev =0.1750000000000001
FireStdDevAuto =0.3500000000000002
