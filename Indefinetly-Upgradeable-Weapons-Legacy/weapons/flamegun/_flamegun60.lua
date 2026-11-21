local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base60",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.8660254037844386,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base60"
NodeEffects = {}
MinFireSpeed = 16300.0
MaxFireSpeed = 16300.1
EnergyFireCost = 4225.012083804699
MetalFireCost = 95.75319434884202
ReloadTime = 3.1875
Projectile = "flamegun"
RoundsEachBurst =71
FireStdDev =0.1675000000000001
FireStdDevAuto =0.3350000000000002
