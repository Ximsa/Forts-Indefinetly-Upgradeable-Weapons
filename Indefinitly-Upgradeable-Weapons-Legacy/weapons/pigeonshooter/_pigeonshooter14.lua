local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head14",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.0,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head14"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 11600.0
MaxFireSpeed = 11600.1
EnergyFireCost = 1193.598368845139
MetalFireCost = 79.57322458967593
ReloadTime = 5.7890625
Projectile = "_musket14"
FireStdDev =0.005793287594733755
FireStdDevAuto =0.01158657518946751
