local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base6",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.0,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base6"
NodeEffects = {}
MinFireSpeed = 8000.0
MaxFireSpeed = 8000.1
EnergyFireCost = 239.471385916695
MetalFireCost = 3.1929518122226
ReloadTime = 2.0015625
Projectile = "_star6"
FireStdDev =0.003725527938354929
FireStdDevAuto =0.014902111753419716
