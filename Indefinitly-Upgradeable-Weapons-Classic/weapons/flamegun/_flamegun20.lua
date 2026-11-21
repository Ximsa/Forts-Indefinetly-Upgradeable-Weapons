local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base20",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.5,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base20"
NodeEffects = {}
MinFireSpeed = 8300.0
MaxFireSpeed = 8300.1
EnergyFireCost = 1237.2349379406494
MetalFireCost = 21.92395213444076
ReloadTime = 5.0625
Projectile = "flamegun"
RoundsEachBurst =31
FireStdDev =0.06750000000000002
FireStdDevAuto =0.13500000000000004
