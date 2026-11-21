local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base62",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.8660254037844386,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base62"
NodeEffects = {}
MinFireSpeed = 16700.0
MaxFireSpeed = 16700.1
EnergyFireCost = 4428.622083514369
MetalFireCost = 100.7844839169574
ReloadTime = 3.09375
Projectile = "flamegun"
RoundsEachBurst =73
FireStdDev =0.1725000000000001
FireStdDevAuto =0.3450000000000002
