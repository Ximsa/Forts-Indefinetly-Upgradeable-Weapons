local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base11",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.0,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base11"
NodeEffects = {}
MinFireSpeed = 9000.0
MaxFireSpeed = 9000.1
EnergyFireCost = 336.1545996692946
MetalFireCost = 4.482061328923929
ReloadTime = 1.9195312500000001
Projectile = "_star11"
FireStdDev =0.002313259736577188
FireStdDevAuto =0.009253038946308752
