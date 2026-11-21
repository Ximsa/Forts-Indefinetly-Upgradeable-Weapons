local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base17",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.5,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base17"
NodeEffects = {}
MinFireSpeed = 10200.0
MaxFireSpeed = 10200.1
EnergyFireCost = 462.51580816154006
MetalFireCost = 6.166877442153869
ReloadTime = 1.8210937500000002
Projectile = "_star17"
FireStdDev =0.0013057748147408909
FireStdDevAuto =0.005223099258963563
