local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/flamegun.lua")
path = tmp
Sprites={{Name = "flamegun-base47",States={Normal={Frames={{texture="weapons/machinegun/base.tga",colour={0.7071067811865476,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="flamegun-base47"
NodeEffects = {}
MinFireSpeed = 13700.0
MaxFireSpeed = 13700.1
EnergyFireCost = 3044.8828700736526
MetalFireCost = 66.59170026436827
ReloadTime = 3.796875
Projectile = "flamegun"
RoundsEachBurst =58
FireStdDev =0.13500000000000006
FireStdDevAuto =0.27000000000000013
