local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base3",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.0,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base3"
NodeEffects = {}
MinFireSpeed = 7400.0
MaxFireSpeed = 7400.1
EnergyFireCost = 184.95849609375
MetalFireCost = 2.46611328125
ReloadTime = 2.05078125
Projectile = "_star3"
FireStdDev =0.004958677685950413
FireStdDevAuto =0.01983471074380165
