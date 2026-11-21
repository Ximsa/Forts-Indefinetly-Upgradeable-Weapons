local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base36",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.7071067811865476,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base36"
NodeEffects = {}
MinFireSpeed = 11500.0
MaxFireSpeed = 11500.1
EnergyFireCost = 2216.235736857825
MetalFireCost = 46.11547766752926
ReloadTime = 4.3125
Projectile = "flamegun"
RoundsEachBurst =47
FireStdDev =0.10750000000000005
FireStdDevAuto =0.2150000000000001
