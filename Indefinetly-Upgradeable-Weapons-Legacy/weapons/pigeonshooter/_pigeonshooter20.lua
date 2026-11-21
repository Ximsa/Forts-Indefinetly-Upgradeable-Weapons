local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head20",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.5,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head20"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 12800.0
MaxFireSpeed = 12800.1
EnergyFireCost = 1590.7306344951205
MetalFireCost = 106.04870896634137
ReloadTime = 5.484375
Projectile = "_musket20"
FireStdDev =0.0032701598165311564
FireStdDevAuto =0.006540319633062313
