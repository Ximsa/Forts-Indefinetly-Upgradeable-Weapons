local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base46",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.7071067811865476,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base46"
NodeEffects = {}
MinFireSpeed = 16000.0
MaxFireSpeed = 16000.1
EnergyFireCost = 1270.1044198992113
MetalFireCost = 16.934725598656136
ReloadTime = 1.3453125
Projectile = "_star46"
FireStdDev =8.231527212689118e-05
FireStdDevAuto =0.00032926108850756474
