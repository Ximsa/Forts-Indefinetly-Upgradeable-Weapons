local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base14",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.0,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base14"
NodeEffects = {}
MinFireSpeed = 9600.0
MaxFireSpeed = 9600.1
EnergyFireCost = 397.86612294837965
MetalFireCost = 5.30488163931173
ReloadTime = 1.8703125
Projectile = "_star14"
FireStdDev =0.0017379862784201259
FireStdDevAuto =0.0069519451136805036
