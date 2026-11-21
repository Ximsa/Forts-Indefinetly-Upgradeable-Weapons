local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base23",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.5,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base23"
NodeEffects = {}
MinFireSpeed = 11400.0
MaxFireSpeed = 11400.1
EnergyFireCost = 601.1958827949809
MetalFireCost = 8.015945103933081
ReloadTime = 1.72265625
Projectile = "_star23"
FireStdDev =0.0007370758414420335
FireStdDevAuto =0.002948303365768134
