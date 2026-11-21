local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base57",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.8660254037844386,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base57"
NodeEffects = {}
MinFireSpeed = 18200.0
MaxFireSpeed = 18200.1
EnergyFireCost = 1684.7973902546053
MetalFireCost = 22.463965203394707
ReloadTime = 1.1648437500000002
Projectile = "_star57"
FireStdDev =2.885100071462604e-05
FireStdDevAuto =0.00011540400285850416
