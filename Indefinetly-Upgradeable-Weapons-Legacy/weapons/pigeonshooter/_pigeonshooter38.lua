local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head38",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.7071067811865476,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head38"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 16400.0
MaxFireSpeed = 16400.1
EnergyFireCost = 3029.889923759025
MetalFireCost = 201.99266158393507
ReloadTime = 4.5703125
Projectile = "_musket38"
FireStdDev =0.0005881669874110299
FireStdDevAuto =0.0011763339748220598
