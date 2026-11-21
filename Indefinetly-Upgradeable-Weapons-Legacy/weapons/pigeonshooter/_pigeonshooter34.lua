local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head34",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.7071067811865476,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head34"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 15600.0
MaxFireSpeed = 15600.1
EnergyFireCost = 2674.5113847346356
MetalFireCost = 178.30075898230908
ReloadTime = 4.7734375
Projectile = "_musket34"
FireStdDev =0.0008611352862684891
FireStdDevAuto =0.0017222705725369783
