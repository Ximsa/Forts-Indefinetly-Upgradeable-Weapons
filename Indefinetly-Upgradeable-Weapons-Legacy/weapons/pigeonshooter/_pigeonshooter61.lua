local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head61",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.8660254037844386,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head61"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 21000.0
MaxFireSpeed = 21000.1
EnergyFireCost = 5562.035868361045
MetalFireCost = 370.8023912240698
ReloadTime = 3.40234375
Projectile = "_musket61"
FireStdDev =6.568540562945619e-05
FireStdDevAuto =0.00013137081125891238
