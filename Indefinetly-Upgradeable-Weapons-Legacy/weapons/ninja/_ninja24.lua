local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base24",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.5,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base24"
NodeEffects = {}
MinFireSpeed = 11600.0
MaxFireSpeed = 11600.1
EnergyFireCost = 625.5895684636524
MetalFireCost = 8.341194246182035
ReloadTime = 1.70625
Projectile = "_star24"
FireStdDev =0.0006700689467654849
FireStdDevAuto =0.0026802757870619397
