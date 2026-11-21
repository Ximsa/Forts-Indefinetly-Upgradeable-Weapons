local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base54",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.8660254037844386,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base54"
NodeEffects = {}
MinFireSpeed = 17600.0
MaxFireSpeed = 17600.1
EnergyFireCost = 1564.598150463007
MetalFireCost = 20.861308672840064
ReloadTime = 1.2140625
Projectile = "_star54"
FireStdDev =3.840068195116727e-05
FireStdDevAuto =0.00015360272780466907
