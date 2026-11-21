local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head30",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.5,0.8660254037844386,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head30"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 14800.0
MaxFireSpeed = 14800.1
EnergyFireCost = 2340.502770975923
MetalFireCost = 156.03351806506157
ReloadTime = 4.9765625
Projectile = "_musket30"
FireStdDev =0.0012607881726256953
FireStdDevAuto =0.0025215763452513906
