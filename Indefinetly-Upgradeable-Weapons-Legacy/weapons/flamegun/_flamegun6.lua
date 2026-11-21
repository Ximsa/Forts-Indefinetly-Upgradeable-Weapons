local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base6",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.0,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base6"
NodeEffects = {}
MinFireSpeed = 5500.0
MaxFireSpeed = 5500.1
EnergyFireCost = 558.766567138955
MetalFireCost = 5.158710539340973
ReloadTime = 5.71875
Projectile = "flamegun"
RoundsEachBurst =17
FireStdDev =0.032499999999999994
FireStdDevAuto =0.06499999999999999
