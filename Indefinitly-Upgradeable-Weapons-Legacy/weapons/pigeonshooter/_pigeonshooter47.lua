local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head47",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.7071067811865476,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head47"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 18200.0
MaxFireSpeed = 18200.1
EnergyFireCost = 3914.84940438041
MetalFireCost = 260.98996029202743
ReloadTime = 4.11328125
Projectile = "_musket47"
FireStdDev =0.00024944021856633693
FireStdDevAuto =0.0004988804371326739
