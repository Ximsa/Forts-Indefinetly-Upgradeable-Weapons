local tmp = path
path = path .. "/../1492181905"
dofile( path .. "/weapons/pigeonshooter.lua")
path = tmp
Sprites={{Name = "pigeonshooter-head58",States={Normal={Frames={{texture= path .. "/../1492181905".."/weapons/musket/head.tga",colour={0.8660254037844386,0.7071067811865476,0.7071067811865476,1},},mipmap=true,},},Idle=Normal,},},}
Root.ChildrenInFront[1].Sprite="pigeonshooter-head58"
FireEffect = "mods/weapon_pack/effects/fire_shotgun.lua"
NodeEffects = {}
MinFireSpeed = 20400.0
MaxFireSpeed = 20400.1
EnergyFireCost = 5178.367048431999
MetalFireCost = 345.22446989546677
ReloadTime = 3.5546875
Projectile = "_musket58"
FireStdDev =8.74272748928062e-05
FireStdDevAuto =0.0001748545497856124
