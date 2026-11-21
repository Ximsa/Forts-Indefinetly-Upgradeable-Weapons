local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head9",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.0,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head9"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 10600.0
MaxFireSpeed = 10600.1
EnergyFireCost = 889.7391054997142
MetalFireCost = 59.31594036664762
ReloadTime = 6.04296875
Projectile = "_musket9"
FireStdDev =0.009330147604194663
FireStdDevAuto =0.018660295208389327
