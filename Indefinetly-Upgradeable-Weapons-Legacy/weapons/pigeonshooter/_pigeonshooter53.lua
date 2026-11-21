local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head53",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.8660254037844386,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head53"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 19400.0
MaxFireSpeed = 19400.1
EnergyFireCost = 4577.274536752266
MetalFireCost = 305.1516357834845
ReloadTime = 3.80859375
Projectile = "_musket53"
FireStdDev =0.00014080250048761336
FireStdDevAuto =0.0002816050009752267
