local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base4",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.0,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base4"
NodeEffects = {}
MinFireSpeed = 7600.0
MaxFireSpeed = 7600.1
EnergyFireCost = 202.84847259521484
MetalFireCost = 2.7046463012695314
ReloadTime = 2.0343750000000003
Projectile = "_star4"
FireStdDev =0.0045078888054094655
FireStdDevAuto =0.018031555221637862
