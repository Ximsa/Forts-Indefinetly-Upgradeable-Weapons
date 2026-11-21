local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base18",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.5,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base18"
NodeEffects = {}
MinFireSpeed = 10400.0
MaxFireSpeed = 10400.1
EnergyFireCost = 484.74261766406414
MetalFireCost = 6.463234902187523
ReloadTime = 1.8046875
Projectile = "_star18"
FireStdDev =0.0011870680134008099
FireStdDevAuto =0.0047482720536032395
