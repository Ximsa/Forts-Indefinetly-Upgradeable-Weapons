local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head11",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.0,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head11"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 11000.0
MaxFireSpeed = 11000.1
EnergyFireCost = 1008.463799007884
MetalFireCost = 67.23091993385893
ReloadTime = 5.94140625
Projectile = "_musket11"
FireStdDev =0.007710865788590629
FireStdDevAuto =0.015421731577181259
