local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base29",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.5,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base29"
NodeEffects = {}
MinFireSpeed = 12600.0
MaxFireSpeed = 12600.1
EnergyFireCost = 753.3957812433798
MetalFireCost = 10.045277083245061
ReloadTime = 1.62421875
Projectile = "_star29"
FireStdDev =0.00041606009696647933
FireStdDevAuto =0.0016642403878659173
