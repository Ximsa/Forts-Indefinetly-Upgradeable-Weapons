local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base49",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.8660254037844386,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base49"
NodeEffects = {}
MinFireSpeed = 16600.0
MaxFireSpeed = 16600.1
EnergyFireCost = 1376.282449015888
MetalFireCost = 18.350432653545152
ReloadTime = 1.29609375
Projectile = "_star49"
FireStdDev =6.184468228917443e-05
FireStdDevAuto =0.0002473787291566977
