local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base37",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.7071067811865476,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base37"
NodeEffects = {}
MinFireSpeed = 14200.0
MaxFireSpeed = 14200.1
EnergyFireCost = 979.6561801055262
MetalFireCost = 13.06208240140701
ReloadTime = 1.4929687500000002
Projectile = "_star37"
FireStdDev =0.00019409510584563982
FireStdDevAuto =0.0007763804233825593
