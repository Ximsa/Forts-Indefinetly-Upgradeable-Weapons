local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base38",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.7071067811865476,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base38"
NodeEffects = {}
MinFireSpeed = 14400.0
MaxFireSpeed = 14400.1
EnergyFireCost = 1009.9633079196751
MetalFireCost = 13.466177438928993
ReloadTime = 1.4765625
Projectile = "_star38"
FireStdDev =0.00017645009622330892
FireStdDevAuto =0.0007058003848932357
