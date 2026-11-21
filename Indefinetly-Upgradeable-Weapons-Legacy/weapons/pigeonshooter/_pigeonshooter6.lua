local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head6",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.0,0.5,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head6"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 10000.0
MaxFireSpeed = 10000.1
EnergyFireCost = 718.414157750085
MetalFireCost = 47.894277183339
ReloadTime = 6.1953125
Projectile = "_musket6"
FireStdDev =0.012418426461183098
FireStdDevAuto =0.024836852922366197
