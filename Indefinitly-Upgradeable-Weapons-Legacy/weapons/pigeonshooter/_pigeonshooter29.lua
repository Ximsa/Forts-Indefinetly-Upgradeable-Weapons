local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head29",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.5,0.8660254037844386,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head29"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 14600.0
MaxFireSpeed = 14600.1
EnergyFireCost = 2260.1873437301397
MetalFireCost = 150.679156248676
ReloadTime = 5.02734375
Projectile = "_musket29"
FireStdDev =0.001386866989888265
FireStdDevAuto =0.00277373397977653
