local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base30",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.5,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base30"
NodeEffects = {}
MinFireSpeed = 12800.0
MaxFireSpeed = 12800.1
EnergyFireCost = 780.1675903253076
MetalFireCost = 10.402234537670765
ReloadTime = 1.6078125
Projectile = "_star30"
FireStdDev =0.00037823645178770843
FireStdDevAuto =0.0015129458071508337
