local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base57",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.8660254037844386,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base57"
NodeEffects = {}
MinFireSpeed = 15700.0
MaxFireSpeed = 15700.1
EnergyFireCost = 3931.1939105940796
MetalFireCost = 88.49282250116647
ReloadTime = 3.328125
Projectile = "flamegun"
RoundsEachBurst =68
FireStdDev =0.1600000000000001
FireStdDevAuto =0.3200000000000002
