local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base43",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.7071067811865476,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base43"
NodeEffects = {}
MinFireSpeed = 12900.0
MaxFireSpeed = 12900.1
EnergyFireCost = 2727.087788014459
MetalFireCost = 58.73884881580132
ReloadTime = 3.984375
Projectile = "flamegun"
RoundsEachBurst =54
FireStdDev =0.12500000000000006
FireStdDevAuto =0.2500000000000001
