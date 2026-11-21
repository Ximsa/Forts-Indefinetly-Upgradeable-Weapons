local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head51",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.8660254037844386,0.0,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head51"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 19000.0
MaxFireSpeed = 19000.1
EnergyFireCost = 4349.58497101474
MetalFireCost = 289.97233140098285
ReloadTime = 3.91015625
Projectile = "_musket51"
FireStdDev =0.00017037102559001218
FireStdDevAuto =0.00034074205118002436
