local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base22",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.5,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base22"
NodeEffects = {}
MinFireSpeed = 11200.0
MaxFireSpeed = 11200.1
EnergyFireCost = 577.177484598135
MetalFireCost = 7.695699794641803
ReloadTime = 1.7390625000000002
Projectile = "_star22"
FireStdDev =0.0008107834255862369
FireStdDevAuto =0.0032431337023449474
