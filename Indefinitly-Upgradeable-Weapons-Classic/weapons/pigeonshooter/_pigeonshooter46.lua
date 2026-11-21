local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head46",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.7071067811865476,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head46"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 18000.0
MaxFireSpeed = 18000.1
EnergyFireCost = 3810.3132596976343
MetalFireCost = 254.02088397984238
ReloadTime = 4.1640625
Projectile = "_musket46"
FireStdDev =0.0002743842404229706
FireStdDevAuto =0.0005487684808459412
