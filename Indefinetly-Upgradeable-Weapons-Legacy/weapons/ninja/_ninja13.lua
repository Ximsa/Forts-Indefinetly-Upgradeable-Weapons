local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base13",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.0,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base13"
NodeEffects = {}
MinFireSpeed = 9400.0
MaxFireSpeed = 9400.1
EnergyFireCost = 376.97587490302
MetalFireCost = 5.026344998706934
ReloadTime = 1.88671875
Projectile = "_star13"
FireStdDev =0.0019117849062621386
FireStdDevAuto =0.007647139625048554
