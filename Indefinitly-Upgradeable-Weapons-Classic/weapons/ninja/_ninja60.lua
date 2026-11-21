local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base60",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.8660254037844386,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base60"
NodeEffects = {}
MinFireSpeed = 18800.0
MaxFireSpeed = 18800.1
EnergyFireCost = 1810.719464487728
MetalFireCost = 24.142926193169675
ReloadTime = 1.115625
Projectile = "_star60"
FireStdDev =2.1676183857720536e-05
FireStdDevAuto =8.670473543088214e-05
