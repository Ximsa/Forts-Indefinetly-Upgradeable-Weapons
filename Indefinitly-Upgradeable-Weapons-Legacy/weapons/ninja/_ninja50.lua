local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base50",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.8660254037844386,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base50"
NodeEffects = {}
MinFireSpeed = 16800.0
MaxFireSpeed = 16800.1
EnergyFireCost = 1412.7868622817612
MetalFireCost = 18.837158163756794
ReloadTime = 1.2796875
Projectile = "_star50"
FireStdDev =5.622243844470402e-05
FireStdDevAuto =0.0002248897537788161
