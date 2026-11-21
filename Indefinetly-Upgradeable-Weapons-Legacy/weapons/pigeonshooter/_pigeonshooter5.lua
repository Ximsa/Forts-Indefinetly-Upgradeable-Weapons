local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head5",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.0,0.5,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head5"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 9800.0
MaxFireSpeed = 9800.1
EnergyFireCost = 663.0539399385452
MetalFireCost = 44.203595995903015
ReloadTime = 6.24609375
Projectile = "_musket5"
FireStdDev =0.01366026910730141
FireStdDevAuto =0.02732053821460282
