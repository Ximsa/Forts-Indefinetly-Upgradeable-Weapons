local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base42",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.7071067811865476,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base42"
NodeEffects = {}
MinFireSpeed = 15200.0
MaxFireSpeed = 15200.1
EnergyFireCost = 1136.0018797775297
MetalFireCost = 15.146691730367051
ReloadTime = 1.4109375000000002
Projectile = "_star42"
FireStdDev =0.00012051778992098142
FireStdDevAuto =0.0004820711596839257
