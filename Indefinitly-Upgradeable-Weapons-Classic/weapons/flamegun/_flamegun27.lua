local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base27",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.5,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base27"
NodeEffects = {}
MinFireSpeed = 9700.0
MaxFireSpeed = 9700.1
EnergyFireCost = 1635.8567132000153
MetalFireCost = 31.77406549992315
ReloadTime = 4.734375
Projectile = "flamegun"
RoundsEachBurst =38
FireStdDev =0.08500000000000003
FireStdDevAuto =0.17000000000000007
