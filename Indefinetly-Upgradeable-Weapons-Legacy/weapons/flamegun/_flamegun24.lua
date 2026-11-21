local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base24",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.5,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base24"
NodeEffects = {}
MinFireSpeed = 9100.0
MaxFireSpeed = 9100.1
EnergyFireCost = 1459.708993081856
MetalFireCost = 27.421380524030422
ReloadTime = 4.875
Projectile = "flamegun"
RoundsEachBurst =35
FireStdDev =0.07750000000000003
FireStdDevAuto =0.15500000000000005
