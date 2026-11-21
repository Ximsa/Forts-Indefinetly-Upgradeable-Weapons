local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head3",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.0,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head3"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 9400.0
MaxFireSpeed = 9400.1
EnergyFireCost = 554.87548828125
MetalFireCost = 36.99169921875
ReloadTime = 6.34765625
Projectile = "_musket3"
FireStdDev =0.016528925619834708
FireStdDevAuto =0.033057851239669415
