local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base32",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.7071067811865476,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base32"
NodeEffects = {}
MinFireSpeed = 10700.0
MaxFireSpeed = 10700.1
EnergyFireCost = 1948.269570627521
MetalFireCost = 39.493919891954185
ReloadTime = 4.5
Projectile = "flamegun"
RoundsEachBurst =43
FireStdDev =0.09750000000000004
FireStdDevAuto =0.1950000000000001
