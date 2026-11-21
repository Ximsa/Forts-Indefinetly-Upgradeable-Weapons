local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base31",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.5,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base31"
NodeEffects = {}
MinFireSpeed = 13000.0
MaxFireSpeed = 13000.1
EnergyFireCost = 807.3577089241405
MetalFireCost = 10.76476945232187
ReloadTime = 1.59140625
Projectile = "_star31"
FireStdDev =0.00034385131980700764
FireStdDevAuto =0.0013754052792280306
