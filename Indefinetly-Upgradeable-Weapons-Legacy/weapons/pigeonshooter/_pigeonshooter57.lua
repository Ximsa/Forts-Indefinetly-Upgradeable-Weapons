local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head57",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.8660254037844386,0.7071067811865476,0.5,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head57"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 20200.0
MaxFireSpeed = 20200.1
EnergyFireCost = 5054.392170763815
MetalFireCost = 336.9594780509211
ReloadTime = 3.60546875
Projectile = "_musket57"
FireStdDev =9.617000238208683e-05
FireStdDevAuto =0.00019234000476417367
