local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base2",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.0,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base2"
NodeEffects = {}
MinFireSpeed = 7200.0
MaxFireSpeed = 7200.1
EnergyFireCost = 167.34375
MetalFireCost = 2.23125
ReloadTime = 2.0671875
Projectile = "_star2"
FireStdDev =0.005454545454545454
FireStdDevAuto =0.021818181818181816
