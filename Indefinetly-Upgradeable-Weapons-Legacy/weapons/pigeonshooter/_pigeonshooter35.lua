local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head35",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.7071067811865476,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head35"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 15800.0
MaxFireSpeed = 15800.1
EnergyFireCost = 2761.300625121114
MetalFireCost = 184.08670834140764
ReloadTime = 4.72265625
Projectile = "_musket35"
FireStdDev =0.0007828502602440809
FireStdDevAuto =0.0015657005204881618
