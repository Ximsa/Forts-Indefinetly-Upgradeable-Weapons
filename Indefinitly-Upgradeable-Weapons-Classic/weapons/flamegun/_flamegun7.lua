local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base7",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.0,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base7"
NodeEffects = {}
MinFireSpeed = 5700.0
MaxFireSpeed = 5700.1
EnergyFireCost = 602.4972947505012
MetalFireCost = 6.239315391518176
ReloadTime = 5.671875
Projectile = "flamegun"
RoundsEachBurst =18
FireStdDev =0.034999999999999996
FireStdDevAuto =0.06999999999999999
