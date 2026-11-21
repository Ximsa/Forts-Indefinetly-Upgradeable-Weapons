local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base64",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.0,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base64"
NodeEffects = {}
MinFireSpeed = 19600.0
MaxFireSpeed = 19600.1
EnergyFireCost = 1987.9905450803788
MetalFireCost = 26.506540601071677
ReloadTime = 1.05
Projectile = "_star64"
FireStdDev =1.4805125235790267e-05
FireStdDevAuto =5.922050094316107e-05
