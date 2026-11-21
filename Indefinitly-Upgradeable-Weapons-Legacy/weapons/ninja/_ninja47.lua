local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base47",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.7071067811865476,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base47"
NodeEffects = {}
MinFireSpeed = 16200.0
MaxFireSpeed = 16200.1
EnergyFireCost = 1304.9498014601365
MetalFireCost = 17.399330686135137
ReloadTime = 1.3289062500000002
Projectile = "_star47"
FireStdDev =7.483206556990108e-05
FireStdDevAuto =0.0002993282622796043
