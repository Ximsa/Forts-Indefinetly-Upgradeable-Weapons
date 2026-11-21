local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base51",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.8660254037844386,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base51"
NodeEffects = {}
MinFireSpeed = 17000.0
MaxFireSpeed = 17000.1
EnergyFireCost = 1449.8616570049137
MetalFireCost = 19.331488760065493
ReloadTime = 1.26328125
Projectile = "_star51"
FireStdDev =5.111130767700365e-05
FireStdDevAuto =0.0002044452307080146
