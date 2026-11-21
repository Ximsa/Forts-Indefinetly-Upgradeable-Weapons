local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base55",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.8660254037844386,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base55"
NodeEffects = {}
MinFireSpeed = 17800.0
MaxFireSpeed = 17800.1
EnergyFireCost = 1604.0449965639914
MetalFireCost = 21.38726662085319
ReloadTime = 1.19765625
Projectile = "_star55"
FireStdDev =3.490971086469751e-05
FireStdDevAuto =0.00013963884345879004
