local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base5",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.0,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base5"
NodeEffects = {}
MinFireSpeed = 7800.0
MaxFireSpeed = 7800.1
EnergyFireCost = 221.01797997951508
MetalFireCost = 2.946906399726868
ReloadTime = 2.01796875
Projectile = "_star5"
FireStdDev =0.0040980807321904225
FireStdDevAuto =0.01639232292876169
