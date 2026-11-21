local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head55",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.8660254037844386,0.5,0.8660254037844386,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head55"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 19800.0
MaxFireSpeed = 19800.1
EnergyFireCost = 4812.134989691973
MetalFireCost = 320.80899931279833
ReloadTime = 3.70703125
Projectile = "_musket55"
FireStdDev =0.00011636570288232508
FireStdDevAuto =0.00023273140576465017
