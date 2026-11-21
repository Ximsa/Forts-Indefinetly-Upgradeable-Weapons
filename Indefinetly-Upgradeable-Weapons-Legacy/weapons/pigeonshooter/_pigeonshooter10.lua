local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head10",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.0,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head10"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 10800.0
MaxFireSpeed = 10800.1
EnergyFireCost = 948.6412790231473
MetalFireCost = 63.24275193487649
ReloadTime = 5.9921875
Projectile = "_musket10"
FireStdDev =0.008481952367449693
FireStdDevAuto =0.016963904734899386
