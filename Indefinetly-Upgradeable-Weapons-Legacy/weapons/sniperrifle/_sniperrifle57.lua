local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head57",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.8660254037844386,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head57"
NodeEffects = {}
MinFireSpeed = 26800.0
MaxFireSpeed = 26800.1
EnergyFireCost = 4492.793040678949
MetalFireCost = 112.3198260169737
ReloadTime = 0.49921875
Projectile = "_sniperrifle57"
FireStdDev =3.1255250774178195e-05
FireStdDevAuto =6.251050154835639e-05
