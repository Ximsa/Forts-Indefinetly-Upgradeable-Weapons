local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head49",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.8660254037844386,0.0,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head49"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 18600.0
MaxFireSpeed = 18600.1
EnergyFireCost = 4128.847347047664
MetalFireCost = 275.2564898031777
ReloadTime = 4.01171875
Projectile = "_musket49"
FireStdDev =0.00020614894096391477
FireStdDevAuto =0.00041229788192782954
