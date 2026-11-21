local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base45",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.7071067811865476,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base45"
NodeEffects = {}
MinFireSpeed = 15800.0
MaxFireSpeed = 15800.1
EnergyFireCost = 1235.795121131531
MetalFireCost = 16.477268281753734
ReloadTime = 1.36171875
Projectile = "_star45"
FireStdDev =9.054679933958031e-05
FireStdDevAuto =0.00036218719735832123
