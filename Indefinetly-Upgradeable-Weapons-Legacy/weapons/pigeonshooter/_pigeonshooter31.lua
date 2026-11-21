local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head31",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.5,0.8660254037844386,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head31"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 15000.0
MaxFireSpeed = 15000.1
EnergyFireCost = 2422.073126772422
MetalFireCost = 161.47154178482816
ReloadTime = 4.92578125
Projectile = "_musket31"
FireStdDev =0.0011461710660233592
FireStdDevAuto =0.0022923421320467183
