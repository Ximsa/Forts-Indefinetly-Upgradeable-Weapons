local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head13",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.0,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head13"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 11400.0
MaxFireSpeed = 11400.1
EnergyFireCost = 1130.92762470906
MetalFireCost = 75.395174980604
ReloadTime = 5.83984375
Projectile = "_musket13"
FireStdDev =0.006372616354207131
FireStdDevAuto =0.012745232708414262
