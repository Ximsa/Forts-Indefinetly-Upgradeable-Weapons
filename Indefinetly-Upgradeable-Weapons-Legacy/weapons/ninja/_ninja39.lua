local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base39",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.7071067811865476,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base39"
NodeEffects = {}
MinFireSpeed = 14600.0
MaxFireSpeed = 14600.1
EnergyFireCost = 1040.74398460592
MetalFireCost = 13.876586461412257
ReloadTime = 1.46015625
Projectile = "_star39"
FireStdDev =0.00016040917838482628
FireStdDevAuto =0.0006416367135393051
