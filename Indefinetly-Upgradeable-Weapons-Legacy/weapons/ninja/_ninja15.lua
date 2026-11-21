local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base15",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.0,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base15"
NodeEffects = {}
MinFireSpeed = 9800.0
MaxFireSpeed = 9800.1
EnergyFireCost = 419.0827811194481
MetalFireCost = 5.587770414925975
ReloadTime = 1.85390625
Projectile = "_star15"
FireStdDev =0.001579987525836478
FireStdDevAuto =0.006319950103345912
