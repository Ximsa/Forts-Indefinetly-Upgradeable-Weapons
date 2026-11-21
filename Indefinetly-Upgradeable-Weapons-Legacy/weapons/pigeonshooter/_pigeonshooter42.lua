local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head42",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.7071067811865476,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head42"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 17200.0
MaxFireSpeed = 17200.1
EnergyFireCost = 3408.0056393325895
MetalFireCost = 227.20037595550605
ReloadTime = 4.3671875
Projectile = "_musket42"
FireStdDev =0.0004017259664032714
FireStdDevAuto =0.0008034519328065428
