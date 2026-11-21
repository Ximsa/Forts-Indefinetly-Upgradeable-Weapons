local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base62",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.8660254037844386,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base62"
NodeEffects = {}
MinFireSpeed = 19200.0
MaxFireSpeed = 19200.1
EnergyFireCost = 1897.9808929347291
MetalFireCost = 25.306411905796356
ReloadTime = 1.0828125
Projectile = "_star62"
FireStdDev =1.7914201535306227e-05
FireStdDevAuto =7.16568061412249e-05
