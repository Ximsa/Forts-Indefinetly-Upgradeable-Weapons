local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head27",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.5,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head27"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 14200.0
MaxFireSpeed = 14200.1
EnergyFireCost = 2103.244345542876
MetalFireCost = 140.21628970285843
ReloadTime = 5.12890625
Projectile = "_musket27"
FireStdDev =0.0016781090577648006
FireStdDevAuto =0.0033562181155296013
