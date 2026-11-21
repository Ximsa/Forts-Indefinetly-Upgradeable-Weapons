local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base21",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.5,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base21"
NodeEffects = {}
MinFireSpeed = 11000.0
MaxFireSpeed = 11000.1
EnergyFireCost = 553.5286002197022
MetalFireCost = 7.380381336262698
ReloadTime = 1.7554687500000001
Projectile = "_star21"
FireStdDev =0.0008918617681448606
FireStdDevAuto =0.0035674470725794425
