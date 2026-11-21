local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head18",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.5,0.0,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head18"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 12400.0
MaxFireSpeed = 12400.1
EnergyFireCost = 1454.2278529921925
MetalFireCost = 96.94852353281283
ReloadTime = 5.5859375
Projectile = "_musket18"
FireStdDev =0.0039568933780027
FireStdDevAuto =0.0079137867560054
