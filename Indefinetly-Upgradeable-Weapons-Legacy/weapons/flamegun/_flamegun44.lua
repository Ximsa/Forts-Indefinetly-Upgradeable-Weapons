local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base44",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.7071067811865476,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base44"
NodeEffects = {}
MinFireSpeed = 13100.0
MaxFireSpeed = 13100.1
EnergyFireCost = 2804.698534702185
MetalFireCost = 60.65664332854821
ReloadTime = 3.9375
Projectile = "flamegun"
RoundsEachBurst =55
FireStdDev =0.12750000000000006
FireStdDevAuto =0.2550000000000001
