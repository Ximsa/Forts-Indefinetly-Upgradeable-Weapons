local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head59",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.8660254037844386,0.7071067811865476,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head59"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 20600.0
MaxFireSpeed = 20600.1
EnergyFireCost = 5304.279033563749
MetalFireCost = 353.61860223758345
ReloadTime = 3.50390625
Projectile = "_musket59"
FireStdDev =7.9479340811642e-05
FireStdDevAuto =0.000158958681623284
