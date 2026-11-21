local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head4",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.0,0.5,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head4"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 9600.0
MaxFireSpeed = 9600.1
EnergyFireCost = 608.5454177856445
MetalFireCost = 40.56969451904297
ReloadTime = 6.296875
Projectile = "_musket4"
FireStdDev =0.015026296018031552
FireStdDevAuto =0.030052592036063103
