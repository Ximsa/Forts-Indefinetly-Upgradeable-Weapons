local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head63",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.8660254037844386,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head63"
NodeEffects = {}
MinFireSpeed = 28600.0
MaxFireSpeed = 28600.1
EnergyFireCost = 5180.364918364893
MetalFireCost = 129.5091229591223
ReloadTime = 0.45703125
Projectile = "_sniperrifle63"
FireStdDev =1.7642774239316727e-05
FireStdDevAuto =3.5285548478633454e-05
