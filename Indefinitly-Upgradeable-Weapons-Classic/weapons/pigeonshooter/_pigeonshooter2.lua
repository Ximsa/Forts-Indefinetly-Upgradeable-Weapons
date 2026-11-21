local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head2",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.0,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head2"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 9200.0
MaxFireSpeed = 9200.1
EnergyFireCost = 502.03125
MetalFireCost = 33.46875
ReloadTime = 6.3984375
Projectile = "_musket2"
FireStdDev =0.01818181818181818
FireStdDevAuto =0.03636363636363636
