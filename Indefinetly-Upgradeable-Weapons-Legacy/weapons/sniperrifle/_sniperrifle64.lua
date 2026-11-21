local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head64",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.0,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head64"
NodeEffects = {}
MinFireSpeed = 28900.0
MaxFireSpeed = 28900.1
EnergyFireCost = 5301.308120214345
MetalFireCost = 132.53270300535857
ReloadTime = 0.45
Projectile = "_sniperrifle64"
FireStdDev =1.6038885672106114e-05
FireStdDevAuto =3.207777134421223e-05
