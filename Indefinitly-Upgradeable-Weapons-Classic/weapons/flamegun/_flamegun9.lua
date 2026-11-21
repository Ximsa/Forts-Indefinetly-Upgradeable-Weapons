local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base9",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.0,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base9"
NodeEffects = {}
MinFireSpeed = 6100.0
MaxFireSpeed = 6100.1
EnergyFireCost = 692.0193042775555
MetalFireCost = 8.451442267862376
ReloadTime = 5.578125
Projectile = "flamegun"
RoundsEachBurst =20
FireStdDev =0.04
FireStdDevAuto =0.08
