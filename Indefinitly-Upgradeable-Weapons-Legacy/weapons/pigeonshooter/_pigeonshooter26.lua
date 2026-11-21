local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head26",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.5,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head26"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 14000.0
MaxFireSpeed = 14000.1
EnergyFireCost = 2026.5790479191396
MetalFireCost = 135.10526986127599
ReloadTime = 5.1796875
Projectile = "_musket26"
FireStdDev =0.001845919963541281
FireStdDevAuto =0.003691839927082562
