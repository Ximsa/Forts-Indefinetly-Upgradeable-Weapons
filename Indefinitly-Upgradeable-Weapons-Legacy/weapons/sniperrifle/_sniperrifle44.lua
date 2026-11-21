local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/sniperrifle.lua")
path = tmp
Sprites={{Name = "sniperrifle-head44",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/snipertower/head_sniperrifle.tga",colour={0.7071067811865476,0.8660254037844386,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="sniperrifle-head44"
NodeEffects = {}
MinFireSpeed = 22900.0
MaxFireSpeed = 22900.1
EnergyFireCost = 3205.3697539453533
MetalFireCost = 80.13424384863386
ReloadTime = 0.590625
Projectile = "_sniperrifle44"
FireStdDev =0.00010790160254633315
FireStdDevAuto =0.0002158032050926663
