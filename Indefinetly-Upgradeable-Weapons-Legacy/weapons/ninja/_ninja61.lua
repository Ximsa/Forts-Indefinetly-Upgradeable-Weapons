local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base61",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.8660254037844386,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base61"
NodeEffects = {}
MinFireSpeed = 19000.0
MaxFireSpeed = 19000.1
EnergyFireCost = 1854.0119561203487
MetalFireCost = 24.72015941493795
ReloadTime = 1.0992187500000001
Projectile = "_star61"
FireStdDev =1.970562168883685e-05
FireStdDevAuto =7.88224867553474e-05
