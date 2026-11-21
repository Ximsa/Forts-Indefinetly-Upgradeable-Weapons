local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base44",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.7071067811865476,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base44"
NodeEffects = {}
MinFireSpeed = 15600.0
MaxFireSpeed = 15600.1
EnergyFireCost = 1202.0136577295075
MetalFireCost = 16.026848769726755
ReloadTime = 1.378125
Projectile = "_star44"
FireStdDev =9.960147927353835e-05
FireStdDevAuto =0.0003984059170941534
