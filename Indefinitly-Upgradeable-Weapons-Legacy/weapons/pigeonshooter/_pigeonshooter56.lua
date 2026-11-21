local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head56",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.8660254037844386,0.7071067811865476,0.0,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head56"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 20000.0
MaxFireSpeed = 20000.1
EnergyFireCost = 4932.32459890591
MetalFireCost = 328.8216399270608
ReloadTime = 3.65625
Projectile = "_musket56"
FireStdDev =0.00010578700262029552
FireStdDevAuto =0.00021157400524059105
