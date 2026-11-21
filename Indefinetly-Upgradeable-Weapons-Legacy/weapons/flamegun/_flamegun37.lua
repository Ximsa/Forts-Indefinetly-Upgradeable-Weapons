local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base37",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.7071067811865476,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base37"
NodeEffects = {}
MinFireSpeed = 11700.0
MaxFireSpeed = 11700.1
EnergyFireCost = 2285.8644202462287
MetalFireCost = 47.83603200608441
ReloadTime = 4.265625
Projectile = "flamegun"
RoundsEachBurst =48
FireStdDev =0.11000000000000006
FireStdDevAuto =0.2200000000000001
