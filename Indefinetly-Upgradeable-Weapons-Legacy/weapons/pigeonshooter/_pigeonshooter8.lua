local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head8",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.0,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head8"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 10400.0
MaxFireSpeed = 10400.1
EnergyFireCost = 831.7431192612571
MetalFireCost = 55.44954128408381
ReloadTime = 6.09375
Projectile = "_musket8"
FireStdDev =0.01026316236461413
FireStdDevAuto =0.02052632472922826
