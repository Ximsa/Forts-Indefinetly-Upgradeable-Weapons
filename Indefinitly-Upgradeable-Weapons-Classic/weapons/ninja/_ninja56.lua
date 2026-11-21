local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/ninja.lua")
path = tmp
Sprites={{Name = "ninja-base56",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/ninja/base.tga",colour={0.8660254037844386,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.Sprite="ninja-base56"
NodeEffects = {}
MinFireSpeed = 18000.0
MaxFireSpeed = 18000.1
EnergyFireCost = 1644.1081996353037
MetalFireCost = 21.92144266180402
ReloadTime = 1.18125
Projectile = "_star56"
FireStdDev =3.1736100786088645e-05
FireStdDevAuto =0.00012694440314435458
