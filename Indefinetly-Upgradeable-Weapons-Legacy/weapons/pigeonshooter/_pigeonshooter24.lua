local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head24",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.5,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head24"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 13600.0
MaxFireSpeed = 13600.1
EnergyFireCost = 1876.7687053909576
MetalFireCost = 125.11791369273051
ReloadTime = 5.28125
Projectile = "_musket24"
FireStdDev =0.0022335631558849504
FireStdDevAuto =0.004467126311769901
