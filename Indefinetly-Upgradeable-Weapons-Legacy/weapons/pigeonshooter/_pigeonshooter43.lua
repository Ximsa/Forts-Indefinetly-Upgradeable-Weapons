local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head43",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.7071067811865476,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head43"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 17400.0
MaxFireSpeed = 17400.1
EnergyFireCost = 3506.255727447161
MetalFireCost = 233.75038182981083
ReloadTime = 4.31640625
Projectile = "_musket43"
FireStdDev =0.00036520542400297396
FireStdDevAuto =0.0007304108480059479
