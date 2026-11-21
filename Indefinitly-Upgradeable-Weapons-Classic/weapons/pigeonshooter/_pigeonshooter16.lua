local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head16",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.5,0.0,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head16"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 12000.0
MaxFireSpeed = 12000.1
EnergyFireCost = 1321.8928487233184
MetalFireCost = 88.1261899148879
ReloadTime = 5.6875
Projectile = "_musket16"
FireStdDev =0.004787840987383268
FireStdDevAuto =0.009575681974766536
