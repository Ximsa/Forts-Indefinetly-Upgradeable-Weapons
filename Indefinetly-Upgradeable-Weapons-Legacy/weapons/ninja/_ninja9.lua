local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base9",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.0,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base9"
NodeEffects = {}
MinFireSpeed = 8600.0
MaxFireSpeed = 8600.1
EnergyFireCost = 296.57970183323806
MetalFireCost = 3.9543960244431746
ReloadTime = 1.95234375
Projectile = "_star9"
FireStdDev =0.002799044281258398
FireStdDevAuto =0.011196177125033593
