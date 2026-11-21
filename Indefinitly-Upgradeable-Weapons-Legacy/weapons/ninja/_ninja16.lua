local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base16",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.5,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base16"
NodeEffects = {}
MinFireSpeed = 10000.0
MaxFireSpeed = 10000.1
EnergyFireCost = 440.63094957443946
MetalFireCost = 5.8750793276591935
ReloadTime = 1.8375000000000001
Projectile = "_star16"
FireStdDev =0.00143635229621498
FireStdDevAuto =0.00574540918485992
