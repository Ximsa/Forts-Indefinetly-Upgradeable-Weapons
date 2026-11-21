local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base43",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.7071067811865476,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base43"
NodeEffects = {}
MinFireSpeed = 15400.0
MaxFireSpeed = 15400.1
EnergyFireCost = 1168.7519091490535
MetalFireCost = 15.583358788654035
ReloadTime = 1.39453125
Projectile = "_star43"
FireStdDev =0.00010956162720089219
FireStdDevAuto =0.00043824650880356877
